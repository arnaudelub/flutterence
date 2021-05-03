import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterence/injections.dart';
import 'package:flutterence/login/bloc/login_bloc.dart';
import 'package:flutterence/l10n/l10n.dart';
import 'package:flutterence/login/widgets/social_login_button.dart';
import 'package:flutterence/user/bloc/user_bloc.dart';
import 'package:flutterence/utils/failure_mapper.dart';
import 'package:flutterence/utils/theme/app_color.dart';
import 'package:flutterence/utils/theme/app_style.dart';
import 'package:flutterence/routes/router.gr.dart';
import 'package:flutterence/utils/extensions/mediaquery_extension.dart';

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
    final isPhone = MediaQuery.of(context).isPhone;
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is UserSuccess) {
          context.router.replace(const HomePageRoute());
        } else if (state is UserFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                FailureMapper.firestoreFailureMapper(state.failure, l10n),
              ),
            ),
          );
        }
      },
      child: BlocConsumer<LoginBloc, LoginState>(builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Flutterence Login',
                ),
                centerTitle: true),
            body: Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child:
                          Image.asset('assets/images/dashatar.png', scale: 2),
                    ),
                    SizedBox(height: isPhone ? mediumSpace : largeSpacer),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialLoginButton(
                            onPressed: () => context
                                .read<LoginBloc>()
                                .add(const LoginEvent.loginWithGoogleAsked()),
                            text: l10n.loginWithGoogle,
                            iconAsset: Image.asset(
                                'assets/icons/google_icon.png',
                                height: isPhone
                                    ? socialIconSize
                                    : webSocialIconSize)),
                        SizedBox(height: isPhone ? smallSpacer : mediumSpace),
                        SocialLoginButton(
                            onPressed: () => context
                                .read<LoginBloc>()
                                .add(const LoginEvent.loginWithGithubAsked()),
                            text: l10n.loginWithGithub,
                            iconAsset: Image.asset(
                                'assets/icons/github_icon.png',
                                height: isPhone
                                    ? socialIconSize
                                    : webSocialIconSize)),
                        SizedBox(height: isPhone ? smallSpacer : mediumSpace),
                        if (Platform.isIOS) ...[
                          SocialLoginButton(
                              onPressed: () => context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.loginWithAppleAsked()),
                              text: l10n.loginWithApple,
                              iconAsset: Image.asset(
                                  'assets/icons/apple_icon.png',
                                  height: isPhone
                                      ? socialIconSize
                                      : webSocialIconSize)),
                        ],
                      ],
                    ),
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
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  FailureMapper.authFailureMapper(failure, l10n),
                ),
              ),
            ),
            (success) =>
                context.read<UserBloc>().add(const UserEvent.setUserAsked()),
          ),
        );
      }),
    );
  }
}
