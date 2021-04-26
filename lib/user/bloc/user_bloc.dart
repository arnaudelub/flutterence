import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firestore_helper/firestore_helper.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:user_repository/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._userRepository, this._authFacade)
      : super(const UserState.initial());
  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;

  StreamSubscription<Either<FirestoreFailure, User>?>? _userStreamSubscription;
  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(setUserAsked: (SetUserAsked _) async* {
      yield const UserState.userIsLoading();
      await _userStreamSubscription?.cancel();
      _userStreamSubscription = _userRepository.setUser().listen((data) async {
        print(data);
        if (data == left(const FirestoreFailure.emptyDocs())) {
          add(const UserEvent.addUserasked());
        } else {
          add(UserEvent.userReceived(data!));
        }
      });
    }, userReceived: (UserReceived data) async* {
      if (data.userOrFailure.isLeft()) {
        await _authFacade.signedOut();
      }
      yield data.userOrFailure.fold((failure) => UserState.userFailure(failure),
          (_) => const UserState.userSuccess());
    }, addUserasked: (AddUserAsked data) async* {
      final user = _authFacade.getSignedInUser();
      final userToAdd = User.empty().copyWith(
        id: user!.uid,
        email: user.email!,
        displayName: user.displayName!,
        avatar: user.photoURL,
      );
      final failureOrSuccess = await _userRepository.addUser(user: userToAdd);
      if (failureOrSuccess.isLeft()) {
        yield failureOrSuccess.fold(
            (failure) => UserState.userFailure(failure), (_) => state);
      } else {
        failureOrSuccess.fold(
            (failure) {}, (_) => add(const UserEvent.setUserAsked()));
      }
    });
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription?.cancel();
    await super.close();
  }
}
