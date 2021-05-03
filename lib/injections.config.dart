// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:group_repository/group_repository.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:push_notification/push_notification.dart' as _i8;
import 'package:user_repository/user_repository.dart' as _i6;

import 'core/packages_injectable_module.dart' as _i12;
import 'group/bloc/group_bloc.dart' as _i11;
import 'login/bloc/login_bloc.dart' as _i7;
import 'splash/bloc/auth_bloc.dart' as _i10;
import 'user/bloc/user_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final packagesInjectableModule = _$PackagesInjectableModule();
  gh.lazySingleton<_i3.FirebaseFirestore>(
      () => packagesInjectableModule.firestore);
  gh.lazySingleton<_i4.IAuthFacade>(() => packagesInjectableModule.authFacade);
  gh.lazySingleton<_i5.IGroupRepository>(
      () => packagesInjectableModule.groupRepository);
  gh.lazySingleton<_i6.IUserRepository>(
      () => packagesInjectableModule.userRepository);
  gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(get<_i4.IAuthFacade>()));
  gh.lazySingleton<_i8.PushNotification>(
      () => packagesInjectableModule.pushNotification);
  gh.factory<_i9.UserBloc>(
      () => _i9.UserBloc(get<_i6.IUserRepository>(), get<_i4.IAuthFacade>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i11.GroupBloc>(() => _i11.GroupBloc(get<_i5.IGroupRepository>()));
  return get;
}

class _$PackagesInjectableModule extends _i12.PackagesInjectableModule {}
