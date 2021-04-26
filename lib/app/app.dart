import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterence/injections.dart';
import 'package:flutterence/l10n/l10n.dart';
import 'package:flutterence/routes/router.gr.dart';
import 'package:flutterence/splash/bloc/auth_bloc.dart';
import 'package:flutterence/user/bloc/user_bloc.dart';
import 'package:flutterence/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<UserBloc>(),
        ),
      ],
      child: MaterialApp.router(
        theme: AppTheme.lightThemeData,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        routerDelegate:
            _appRouter.delegate(initialRoutes: [const SplashPageRoute()]),
        routeInformationParser: _appRouter.defaultRouteParser(),
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (_, router) => router!,
      ),
    );
  }
}
