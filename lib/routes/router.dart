import 'package:auto_route/annotations.dart';
import 'package:flutterence/login/view/login_page.dart';
import 'package:flutterence/splash/splash.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(
      path: '/',
      page: SplashPage,
      initial: true,
    ),
    AdaptiveRoute(page: LoginPage, path: '/login')
  ],
)
class $AppRouter {}
