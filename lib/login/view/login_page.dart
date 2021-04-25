import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:flutterence/injections.dart';
import 'package:flutterence/login/bloc/login_bloc.dart';
import 'package:flutterence/l10n/l10n.dart';
import 'package:flutterence/login/widgets/social_login_button.dart';
import 'package:flutterence/utils/theme/app_color.dart';
import 'package:flutterence/utils/theme/app_style.dart';
import 'package:flutterence/routes/router.gr.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<LoginBloc>(), child: const LoginView());
  }
}

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<LoginBloc, LoginState>(builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
              title: const Text(
                'Flutterence Login',
              ),
              centerTitle: true),
          body: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialLoginButton(
                      onPressed: () => context
                          .read<LoginBloc>()
                          .add(const LoginEvent.loginWithGoogleAsked()),
                      text: l10n.loginWithGoogle,
                      iconAsset: Image.asset('assets/icons/google_icon.png',
                          height: socialIconSize)),
                  const SizedBox(height: smallSpacer),
                  SocialLoginButton(
                      onPressed: () => context
                          .read<LoginBloc>()
                          .add(const LoginEvent.loginWithGithubAsked()),
                      text: l10n.loginWithGithub,
                      iconAsset: Image.asset('assets/icons/github_icon.png',
                          height: socialIconSize)),
                  const SizedBox(height: smallSpacer),
                  SocialLoginButton(
                      onPressed: () => context
                          .read<LoginBloc>()
                          .add(const LoginEvent.loginWithAppleAsked()),
                      text: l10n.loginWithApple,
                      iconAsset: Image.asset('assets/icons/apple_icon.png',
                          height: socialIconSize)),
                ],
              ),
              if (state.isLoading) ...[
                Container(
                    color: AppColors.black.withOpacity(0.7),
                    child: const Center(child: CircularProgressIndicator())),
              ]
            ],
          ));
    }, listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
              (failure) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(failure.maybeMap(
                      invalidCredentials: (InvalidCredentials value) =>
                          'Invalid',
                      weakPassword: (WeakPassword value) => 'Weak password',
                      invalidEmail: (InvalidEmail value) => 'Invalid email',
                      serverError: (ServerError value) => 'Server error',
                      operationNotAllowed: (OperationNotAllowed value) =>
                          'Not allowed',
                      wrongIosVersion: (WrongIosVersion value) =>
                          'iOs > 13 required',
                      cancelledByUser: (CancelledByUser value) =>
                          'CancelledByUser',
                      orElse: () => 'Unexpected error')))),
              (success) => context.router.replace(const SplashPageRoute())));
    });
  }
}
