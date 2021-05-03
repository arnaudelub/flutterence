import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterence/routes/router.gr.dart';
import 'package:flutterence/splash/bloc/auth_bloc.dart';
import 'package:flutterence/user/user.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state is UserSuccess) {
                  context.router.replace(const HomePageRoute());
                }
              },
              child:
                  BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                if (state is Unauthenticated) {
                  context.router.replace(const LoginPageRoute());
                } else if (state is Authenticated) {
                  context.read<UserBloc>().add(const UserEvent.setUserAsked());
                }
              }, builder: (context, state) {
                return const SplashView();
              }),
            );
          } else if (snapshot.hasError) {
            return const SplashView(text: 'Error With Firebase');
          } else {
            return const SplashView();
          }
        });
  }
}

class SplashView extends StatelessWidget {
  const SplashView({Key? key, this.text, this.homeContext}) : super(key: key);
  final String? text;
  final BuildContext? homeContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text == null
            ? const CircularProgressIndicator()
            : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(text!),
                BlocProvider.value(
                  value: BlocProvider.of<AuthBloc>(context),
                  child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                    return TextButton(
                        onPressed: () => state is Authenticated
                            ? context
                                .read<AuthBloc>()
                                .add(const AuthEvent.logout())
                            : print('ok'),
                        child: const Text('action'));
                  }),
                )
              ]),
      ),
    );
  }
}
