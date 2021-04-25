// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart'
    as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/packages_injectable_module.dart' as _i6;
import 'login/bloc/login_bloc.dart' as _i4;
import 'splash/bloc/auth_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final packagesInjectableModule = _$PackagesInjectableModule();
  gh.lazySingleton<_i3.IAuthFacade>(() => packagesInjectableModule.authFacade);
  gh.factory<_i4.LoginBloc>(() => _i4.LoginBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i5.AuthBloc>(() => _i5.AuthBloc(get<_i3.IAuthFacade>()));
  return get;
}

class _$PackagesInjectableModule extends _i6.PackagesInjectableModule {}
