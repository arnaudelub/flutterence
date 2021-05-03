import 'dart:async';

import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._facade) : super(const AuthState.initial());

  final IAuthFacade _facade;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (AuthCheckRequested _) async* {
      final user = _facade.getSignedInUser();
      print(user);
      if (user == null) {
        yield const AuthState.unauthenticated();
      } else {
        yield const AuthState.authenticated();
      }
    }, logout: (Logout _) async* {
      yield const AuthState.loading();
      await _facade.signedOut();
      yield const AuthState.unauthenticated();
    });
  }
}
