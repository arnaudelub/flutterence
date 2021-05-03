import 'package:auto_route/annotations.dart';
import 'package:flutterence/home/view/home_page.dart';
import 'package:flutterence/login/view/login_page.dart';
import 'package:flutterence/splash/splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: HomePage, path: '/home')
  ],
)
class $AppRouter {}
