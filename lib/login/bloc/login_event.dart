part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initial() = Initial;
  const factory LoginEvent.loginWithGoogleAsked() = LoginWithGoogleAsked;
  const factory LoginEvent.loginWithGithubAsked() = LoginWithGithubAsked;
  const factory LoginEvent.loginWithAppleAsked() = LoginWithAppleAsked;
}
