import 'dart:async';

import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

part 'login_event.dart';
part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authFacade) : super(LoginState.initial());
  final IAuthFacade _authFacade;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(initial: (Initial _) async* {
      yield state;
    }, loginWithGoogleAsked: (LoginWithGoogleAsked _) async* {
      yield* failureOrSuccessSocialLogin(_authFacade.signInWithGoogle);
    }, loginWithGithubAsked: (LoginWithGithubAsked _) async* {
      yield* failureOrSuccessSocialLogin(_authFacade.signInWithGitHub);
    }, loginWithAppleAsked: (LoginWithAppleAsked _) async* {
      yield* failureOrSuccessSocialLogin(_authFacade.signInWithApple);
    });
  }

  Stream<LoginState> failureOrSuccessSocialLogin(
      Future<Either<AuthFailure, Unit>> Function() onSocialLogin) async* {
    yield state.copyWith(isLoading: true, authFailureOrSuccessOption: none());
    final failureOrSuccess = await onSocialLogin();
    yield state.copyWith(
        isLoading: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}
