// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:push_notification/push_notification.dart' as _i6;
import 'package:user_repository/user_repository.dart' as _i4;

import 'core/packages_injectable_module.dart' as _i9;
import 'login/bloc/login_bloc.dart' as _i5;
import 'splash/bloc/auth_bloc.dart' as _i8;
import 'user/bloc/user_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final packagesInjectableModule = _$PackagesInjectableModule();
  gh.lazySingleton<_i3.IAuthFacade>(() => packagesInjectableModule.authFacade);
  gh.lazySingleton<_i4.IUserRepository>(
      () => packagesInjectableModule.userRepository);
  gh.factory<_i5.LoginBloc>(() => _i5.LoginBloc(get<_i3.IAuthFacade>()));
  gh.lazySingleton<_i6.PushNotification>(
      () => packagesInjectableModule.pushNotification);
  gh.factory<_i7.UserBloc>(
      () => _i7.UserBloc(get<_i4.IUserRepository>(), get<_i3.IAuthFacade>()));
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i3.IAuthFacade>()));
  return get;
}

class _$PackagesInjectableModule extends _i9.PackagesInjectableModule {}
