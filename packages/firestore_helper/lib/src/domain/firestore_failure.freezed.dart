// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firestore_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirestoreFailureTearOff {
  const _$FirestoreFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  Unexpected unexpected() {
    return const Unexpected();
  }

  InsufficientPermission insufficientPermission() {
    return const InsufficientPermission();
  }

  EmptyDocs emptyDocs() {
    return const EmptyDocs();
  }
}

/// @nodoc
const $FirestoreFailure = _$FirestoreFailureTearOff();

/// @nodoc
mixin _$FirestoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() emptyDocs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? emptyDocs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(EmptyDocs value) emptyDocs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(EmptyDocs value)? emptyDocs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreFailureCopyWith<$Res> {
  factory $FirestoreFailureCopyWith(
          FirestoreFailure value, $Res Function(FirestoreFailure) then) =
      _$FirestoreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirestoreFailureCopyWithImpl<$Res>
    implements $FirestoreFailureCopyWith<$Res> {
  _$FirestoreFailureCopyWithImpl(this._value, this._then);

  final FirestoreFailure _value;
  // ignore: unused_field
  final $Res Function(FirestoreFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'FirestoreFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() emptyDocs,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? emptyDocs,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(EmptyDocs value) emptyDocs,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(EmptyDocs value)? emptyDocs,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements FirestoreFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc
class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'FirestoreFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() emptyDocs,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? emptyDocs,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(EmptyDocs value) emptyDocs,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(EmptyDocs value)? emptyDocs,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements FirestoreFailure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $InsufficientPermissionCopyWith<$Res> {
  factory $InsufficientPermissionCopyWith(InsufficientPermission value,
          $Res Function(InsufficientPermission) then) =
      _$InsufficientPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InsufficientPermissionCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res>
    implements $InsufficientPermissionCopyWith<$Res> {
  _$InsufficientPermissionCopyWithImpl(InsufficientPermission _value,
      $Res Function(InsufficientPermission) _then)
      : super(_value, (v) => _then(v as InsufficientPermission));

  @override
  InsufficientPermission get _value => super._value as InsufficientPermission;
}

/// @nodoc
class _$InsufficientPermission implements InsufficientPermission {
  const _$InsufficientPermission();

  @override
  String toString() {
    return 'FirestoreFailure.insufficientPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InsufficientPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() emptyDocs,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? emptyDocs,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(EmptyDocs value) emptyDocs,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(EmptyDocs value)? emptyDocs,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermission implements FirestoreFailure {
  const factory InsufficientPermission() = _$InsufficientPermission;
}

/// @nodoc
abstract class $EmptyDocsCopyWith<$Res> {
  factory $EmptyDocsCopyWith(EmptyDocs value, $Res Function(EmptyDocs) then) =
      _$EmptyDocsCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyDocsCopyWithImpl<$Res> extends _$FirestoreFailureCopyWithImpl<$Res>
    implements $EmptyDocsCopyWith<$Res> {
  _$EmptyDocsCopyWithImpl(EmptyDocs _value, $Res Function(EmptyDocs) _then)
      : super(_value, (v) => _then(v as EmptyDocs));

  @override
  EmptyDocs get _value => super._value as EmptyDocs;
}

/// @nodoc
class _$EmptyDocs implements EmptyDocs {
  const _$EmptyDocs();

  @override
  String toString() {
    return 'FirestoreFailure.emptyDocs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyDocs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() emptyDocs,
  }) {
    return emptyDocs();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? emptyDocs,
    required TResult orElse(),
  }) {
    if (emptyDocs != null) {
      return emptyDocs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InsufficientPermission value)
        insufficientPermission,
    required TResult Function(EmptyDocs value) emptyDocs,
  }) {
    return emptyDocs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InsufficientPermission value)? insufficientPermission,
    TResult Function(EmptyDocs value)? emptyDocs,
    required TResult orElse(),
  }) {
    if (emptyDocs != null) {
      return emptyDocs(this);
    }
    return orElse();
  }
}

abstract class EmptyDocs implements FirestoreFailure {
  const factory EmptyDocs() = _$EmptyDocs;
}
