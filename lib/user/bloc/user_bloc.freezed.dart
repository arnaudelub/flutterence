// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  SetUserAsked setUserAsked() {
    return const SetUserAsked();
  }

  UserReceived userReceived(Either<FirestoreFailure, User> userOrFailure) {
    return UserReceived(
      userOrFailure,
    );
  }

  AddUserAsked addUserasked() {
    return const AddUserAsked();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setUserAsked,
    required TResult Function(Either<FirestoreFailure, User> userOrFailure)
        userReceived,
    required TResult Function() addUserasked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setUserAsked,
    TResult Function(Either<FirestoreFailure, User> userOrFailure)?
        userReceived,
    TResult Function()? addUserasked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetUserAsked value) setUserAsked,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(AddUserAsked value) addUserasked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetUserAsked value)? setUserAsked,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(AddUserAsked value)? addUserasked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $SetUserAskedCopyWith<$Res> {
  factory $SetUserAskedCopyWith(
          SetUserAsked value, $Res Function(SetUserAsked) then) =
      _$SetUserAskedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetUserAskedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $SetUserAskedCopyWith<$Res> {
  _$SetUserAskedCopyWithImpl(
      SetUserAsked _value, $Res Function(SetUserAsked) _then)
      : super(_value, (v) => _then(v as SetUserAsked));

  @override
  SetUserAsked get _value => super._value as SetUserAsked;
}

/// @nodoc
class _$SetUserAsked implements SetUserAsked {
  const _$SetUserAsked();

  @override
  String toString() {
    return 'UserEvent.setUserAsked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SetUserAsked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setUserAsked,
    required TResult Function(Either<FirestoreFailure, User> userOrFailure)
        userReceived,
    required TResult Function() addUserasked,
  }) {
    return setUserAsked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setUserAsked,
    TResult Function(Either<FirestoreFailure, User> userOrFailure)?
        userReceived,
    TResult Function()? addUserasked,
    required TResult orElse(),
  }) {
    if (setUserAsked != null) {
      return setUserAsked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetUserAsked value) setUserAsked,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(AddUserAsked value) addUserasked,
  }) {
    return setUserAsked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetUserAsked value)? setUserAsked,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(AddUserAsked value)? addUserasked,
    required TResult orElse(),
  }) {
    if (setUserAsked != null) {
      return setUserAsked(this);
    }
    return orElse();
  }
}

abstract class SetUserAsked implements UserEvent {
  const factory SetUserAsked() = _$SetUserAsked;
}

/// @nodoc
abstract class $UserReceivedCopyWith<$Res> {
  factory $UserReceivedCopyWith(
          UserReceived value, $Res Function(UserReceived) then) =
      _$UserReceivedCopyWithImpl<$Res>;
  $Res call({Either<FirestoreFailure, User> userOrFailure});
}

/// @nodoc
class _$UserReceivedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UserReceivedCopyWith<$Res> {
  _$UserReceivedCopyWithImpl(
      UserReceived _value, $Res Function(UserReceived) _then)
      : super(_value, (v) => _then(v as UserReceived));

  @override
  UserReceived get _value => super._value as UserReceived;

  @override
  $Res call({
    Object? userOrFailure = freezed,
  }) {
    return _then(UserReceived(
      userOrFailure == freezed
          ? _value.userOrFailure
          : userOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<FirestoreFailure, User>,
    ));
  }
}

/// @nodoc
class _$UserReceived implements UserReceived {
  const _$UserReceived(this.userOrFailure);

  @override
  final Either<FirestoreFailure, User> userOrFailure;

  @override
  String toString() {
    return 'UserEvent.userReceived(userOrFailure: $userOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserReceived &&
            (identical(other.userOrFailure, userOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.userOrFailure, userOrFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOrFailure);

  @JsonKey(ignore: true)
  @override
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      _$UserReceivedCopyWithImpl<UserReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setUserAsked,
    required TResult Function(Either<FirestoreFailure, User> userOrFailure)
        userReceived,
    required TResult Function() addUserasked,
  }) {
    return userReceived(userOrFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setUserAsked,
    TResult Function(Either<FirestoreFailure, User> userOrFailure)?
        userReceived,
    TResult Function()? addUserasked,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(userOrFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetUserAsked value) setUserAsked,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(AddUserAsked value) addUserasked,
  }) {
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetUserAsked value)? setUserAsked,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(AddUserAsked value)? addUserasked,
    required TResult orElse(),
  }) {
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class UserReceived implements UserEvent {
  const factory UserReceived(Either<FirestoreFailure, User> userOrFailure) =
      _$UserReceived;

  Either<FirestoreFailure, User> get userOrFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceivedCopyWith<UserReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserAskedCopyWith<$Res> {
  factory $AddUserAskedCopyWith(
          AddUserAsked value, $Res Function(AddUserAsked) then) =
      _$AddUserAskedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserAskedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $AddUserAskedCopyWith<$Res> {
  _$AddUserAskedCopyWithImpl(
      AddUserAsked _value, $Res Function(AddUserAsked) _then)
      : super(_value, (v) => _then(v as AddUserAsked));

  @override
  AddUserAsked get _value => super._value as AddUserAsked;
}

/// @nodoc
class _$AddUserAsked implements AddUserAsked {
  const _$AddUserAsked();

  @override
  String toString() {
    return 'UserEvent.addUserasked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddUserAsked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setUserAsked,
    required TResult Function(Either<FirestoreFailure, User> userOrFailure)
        userReceived,
    required TResult Function() addUserasked,
  }) {
    return addUserasked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setUserAsked,
    TResult Function(Either<FirestoreFailure, User> userOrFailure)?
        userReceived,
    TResult Function()? addUserasked,
    required TResult orElse(),
  }) {
    if (addUserasked != null) {
      return addUserasked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetUserAsked value) setUserAsked,
    required TResult Function(UserReceived value) userReceived,
    required TResult Function(AddUserAsked value) addUserasked,
  }) {
    return addUserasked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetUserAsked value)? setUserAsked,
    TResult Function(UserReceived value)? userReceived,
    TResult Function(AddUserAsked value)? addUserasked,
    required TResult orElse(),
  }) {
    if (addUserasked != null) {
      return addUserasked(this);
    }
    return orElse();
  }
}

abstract class AddUserAsked implements UserEvent {
  const factory AddUserAsked() = _$AddUserAsked;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  Initial initial() {
    return const Initial();
  }

  UserIsLoading userIsLoading() {
    return const UserIsLoading();
  }

  UserFailure userFailure(FirestoreFailure failure) {
    return UserFailure(
      failure,
    );
  }

  UserSuccess userSuccess() {
    return const UserSuccess();
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsLoading,
    required TResult Function(FirestoreFailure failure) userFailure,
    required TResult Function() userSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsLoading,
    TResult Function(FirestoreFailure failure)? userFailure,
    TResult Function()? userSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserIsLoading value) userIsLoading,
    required TResult Function(UserFailure value) userFailure,
    required TResult Function(UserSuccess value) userSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserIsLoading value)? userIsLoading,
    TResult Function(UserFailure value)? userFailure,
    TResult Function(UserSuccess value)? userSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsLoading,
    required TResult Function(FirestoreFailure failure) userFailure,
    required TResult Function() userSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsLoading,
    TResult Function(FirestoreFailure failure)? userFailure,
    TResult Function()? userSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserIsLoading value) userIsLoading,
    required TResult Function(UserFailure value) userFailure,
    required TResult Function(UserSuccess value) userSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserIsLoading value)? userIsLoading,
    TResult Function(UserFailure value)? userFailure,
    TResult Function(UserSuccess value)? userSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $UserIsLoadingCopyWith<$Res> {
  factory $UserIsLoadingCopyWith(
          UserIsLoading value, $Res Function(UserIsLoading) then) =
      _$UserIsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserIsLoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserIsLoadingCopyWith<$Res> {
  _$UserIsLoadingCopyWithImpl(
      UserIsLoading _value, $Res Function(UserIsLoading) _then)
      : super(_value, (v) => _then(v as UserIsLoading));

  @override
  UserIsLoading get _value => super._value as UserIsLoading;
}

/// @nodoc
class _$UserIsLoading implements UserIsLoading {
  const _$UserIsLoading();

  @override
  String toString() {
    return 'UserState.userIsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserIsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsLoading,
    required TResult Function(FirestoreFailure failure) userFailure,
    required TResult Function() userSuccess,
  }) {
    return userIsLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsLoading,
    TResult Function(FirestoreFailure failure)? userFailure,
    TResult Function()? userSuccess,
    required TResult orElse(),
  }) {
    if (userIsLoading != null) {
      return userIsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserIsLoading value) userIsLoading,
    required TResult Function(UserFailure value) userFailure,
    required TResult Function(UserSuccess value) userSuccess,
  }) {
    return userIsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserIsLoading value)? userIsLoading,
    TResult Function(UserFailure value)? userFailure,
    TResult Function(UserSuccess value)? userSuccess,
    required TResult orElse(),
  }) {
    if (userIsLoading != null) {
      return userIsLoading(this);
    }
    return orElse();
  }
}

abstract class UserIsLoading implements UserState {
  const factory UserIsLoading() = _$UserIsLoading;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
  $Res call({FirestoreFailure failure});

  $FirestoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(
      UserFailure _value, $Res Function(UserFailure) _then)
      : super(_value, (v) => _then(v as UserFailure));

  @override
  UserFailure get _value => super._value as UserFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(UserFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FirestoreFailure,
    ));
  }

  @override
  $FirestoreFailureCopyWith<$Res> get failure {
    return $FirestoreFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$UserFailure implements UserFailure {
  const _$UserFailure(this.failure);

  @override
  final FirestoreFailure failure;

  @override
  String toString() {
    return 'UserState.userFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $UserFailureCopyWith<UserFailure> get copyWith =>
      _$UserFailureCopyWithImpl<UserFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsLoading,
    required TResult Function(FirestoreFailure failure) userFailure,
    required TResult Function() userSuccess,
  }) {
    return userFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsLoading,
    TResult Function(FirestoreFailure failure)? userFailure,
    TResult Function()? userSuccess,
    required TResult orElse(),
  }) {
    if (userFailure != null) {
      return userFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserIsLoading value) userIsLoading,
    required TResult Function(UserFailure value) userFailure,
    required TResult Function(UserSuccess value) userSuccess,
  }) {
    return userFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserIsLoading value)? userIsLoading,
    TResult Function(UserFailure value)? userFailure,
    TResult Function(UserSuccess value)? userSuccess,
    required TResult orElse(),
  }) {
    if (userFailure != null) {
      return userFailure(this);
    }
    return orElse();
  }
}

abstract class UserFailure implements UserState {
  const factory UserFailure(FirestoreFailure failure) = _$UserFailure;

  FirestoreFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFailureCopyWith<UserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSuccessCopyWith<$Res> {
  factory $UserSuccessCopyWith(
          UserSuccess value, $Res Function(UserSuccess) then) =
      _$UserSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserSuccessCopyWith<$Res> {
  _$UserSuccessCopyWithImpl(
      UserSuccess _value, $Res Function(UserSuccess) _then)
      : super(_value, (v) => _then(v as UserSuccess));

  @override
  UserSuccess get _value => super._value as UserSuccess;
}

/// @nodoc
class _$UserSuccess implements UserSuccess {
  const _$UserSuccess();

  @override
  String toString() {
    return 'UserState.userSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsLoading,
    required TResult Function(FirestoreFailure failure) userFailure,
    required TResult Function() userSuccess,
  }) {
    return userSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsLoading,
    TResult Function(FirestoreFailure failure)? userFailure,
    TResult Function()? userSuccess,
    required TResult orElse(),
  }) {
    if (userSuccess != null) {
      return userSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(UserIsLoading value) userIsLoading,
    required TResult Function(UserFailure value) userFailure,
    required TResult Function(UserSuccess value) userSuccess,
  }) {
    return userSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(UserIsLoading value)? userIsLoading,
    TResult Function(UserFailure value)? userFailure,
    TResult Function(UserSuccess value)? userSuccess,
    required TResult orElse(),
  }) {
    if (userSuccess != null) {
      return userSuccess(this);
    }
    return orElse();
  }
}

abstract class UserSuccess implements UserState {
  const factory UserSuccess() = _$UserSuccess;
}
