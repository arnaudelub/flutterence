// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../home/view/home_page.dart' as _i4;
import '../login/view/login_page.dart' as _i3;
import '../splash/splash.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i2.SplashPage());
    },
    LoginPageRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i3.LoginPage());
    },
    HomePageRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: const _i4.HomePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(LoginPageRoute.name, path: '/login'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/login');

  static const String name = 'LoginPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home');

  static const String name = 'HomePageRoute';
}
