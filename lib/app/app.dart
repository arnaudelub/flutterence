import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterence/l10n/l10n.dart';
import 'package:flutterence/routes/router.gr.dart';
import 'package:flutterence/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
    );
  }
}
