// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupEventTearOff {
  const _$GroupEventTearOff();

  FetchGroupsAsked fetchGroupsAsked() {
    return const FetchGroupsAsked();
  }

  GetGroupAsked getGroupsAsked() {
    return const GetGroupAsked();
  }
}

/// @nodoc
const $GroupEvent = _$GroupEventTearOff();

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGroupsAsked,
    required TResult Function() getGroupsAsked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGroupsAsked,
    TResult Function()? getGroupsAsked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGroupsAsked value) fetchGroupsAsked,
    required TResult Function(GetGroupAsked value) getGroupsAsked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGroupsAsked value)? fetchGroupsAsked,
    TResult Function(GetGroupAsked value)? getGroupsAsked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res> implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

  final GroupEvent _value;
  // ignore: unused_field
  final $Res Function(GroupEvent) _then;
}

/// @nodoc
abstract class $FetchGroupsAskedCopyWith<$Res> {
  factory $FetchGroupsAskedCopyWith(
          FetchGroupsAsked value, $Res Function(FetchGroupsAsked) then) =
      _$FetchGroupsAskedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchGroupsAskedCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res>
    implements $FetchGroupsAskedCopyWith<$Res> {
  _$FetchGroupsAskedCopyWithImpl(
      FetchGroupsAsked _value, $Res Function(FetchGroupsAsked) _then)
      : super(_value, (v) => _then(v as FetchGroupsAsked));

  @override
  FetchGroupsAsked get _value => super._value as FetchGroupsAsked;
}

/// @nodoc

class _$FetchGroupsAsked implements FetchGroupsAsked {
  const _$FetchGroupsAsked();

  @override
  String toString() {
    return 'GroupEvent.fetchGroupsAsked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchGroupsAsked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGroupsAsked,
    required TResult Function() getGroupsAsked,
  }) {
    return fetchGroupsAsked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGroupsAsked,
    TResult Function()? getGroupsAsked,
    required TResult orElse(),
  }) {
    if (fetchGroupsAsked != null) {
      return fetchGroupsAsked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGroupsAsked value) fetchGroupsAsked,
    required TResult Function(GetGroupAsked value) getGroupsAsked,
  }) {
    return fetchGroupsAsked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGroupsAsked value)? fetchGroupsAsked,
    TResult Function(GetGroupAsked value)? getGroupsAsked,
    required TResult orElse(),
  }) {
    if (fetchGroupsAsked != null) {
      return fetchGroupsAsked(this);
    }
    return orElse();
  }
}

abstract class FetchGroupsAsked implements GroupEvent {
  const factory FetchGroupsAsked() = _$FetchGroupsAsked;
}

/// @nodoc
abstract class $GetGroupAskedCopyWith<$Res> {
  factory $GetGroupAskedCopyWith(
          GetGroupAsked value, $Res Function(GetGroupAsked) then) =
      _$GetGroupAskedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGroupAskedCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $GetGroupAskedCopyWith<$Res> {
  _$GetGroupAskedCopyWithImpl(
      GetGroupAsked _value, $Res Function(GetGroupAsked) _then)
      : super(_value, (v) => _then(v as GetGroupAsked));

  @override
  GetGroupAsked get _value => super._value as GetGroupAsked;
}

/// @nodoc

class _$GetGroupAsked implements GetGroupAsked {
  const _$GetGroupAsked();

  @override
  String toString() {
    return 'GroupEvent.getGroupsAsked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetGroupAsked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGroupsAsked,
    required TResult Function() getGroupsAsked,
  }) {
    return getGroupsAsked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGroupsAsked,
    TResult Function()? getGroupsAsked,
    required TResult orElse(),
  }) {
    if (getGroupsAsked != null) {
      return getGroupsAsked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGroupsAsked value) fetchGroupsAsked,
    required TResult Function(GetGroupAsked value) getGroupsAsked,
  }) {
    return getGroupsAsked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGroupsAsked value)? fetchGroupsAsked,
    TResult Function(GetGroupAsked value)? getGroupsAsked,
    required TResult orElse(),
  }) {
    if (getGroupsAsked != null) {
      return getGroupsAsked(this);
    }
    return orElse();
  }
}

abstract class GetGroupAsked implements GroupEvent {
  const factory GetGroupAsked() = _$GetGroupAsked;
}

/// @nodoc
class _$GroupStateTearOff {
  const _$GroupStateTearOff();

  Initial initial() {
    return const Initial();
  }

  GroupsAreLoading groupsAreLoading() {
    return const GroupsAreLoading();
  }

  GroupsReceived groupsReceived(List<Group> groups) {
    return GroupsReceived(
      groups,
    );
  }

  GroupsFailure groupsFailure(FirestoreFailure failure) {
    return GroupsFailure(
      failure,
    );
  }
}

/// @nodoc
const $GroupState = _$GroupStateTearOff();

/// @nodoc
mixin _$GroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() groupsAreLoading,
    required TResult Function(List<Group> groups) groupsReceived,
    required TResult Function(FirestoreFailure failure) groupsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? groupsAreLoading,
    TResult Function(List<Group> groups)? groupsReceived,
    TResult Function(FirestoreFailure failure)? groupsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GroupsAreLoading value) groupsAreLoading,
    required TResult Function(GroupsReceived value) groupsReceived,
    required TResult Function(GroupsFailure value) groupsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GroupsAreLoading value)? groupsAreLoading,
    TResult Function(GroupsReceived value)? groupsReceived,
    TResult Function(GroupsFailure value)? groupsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res> implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  final GroupState _value;
  // ignore: unused_field
  final $Res Function(GroupState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$GroupStateCopyWithImpl<$Res>
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
    return 'GroupState.initial()';
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
    required TResult Function() groupsAreLoading,
    required TResult Function(List<Group> groups) groupsReceived,
    required TResult Function(FirestoreFailure failure) groupsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? groupsAreLoading,
    TResult Function(List<Group> groups)? groupsReceived,
    TResult Function(FirestoreFailure failure)? groupsFailure,
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
    required TResult Function(GroupsAreLoading value) groupsAreLoading,
    required TResult Function(GroupsReceived value) groupsReceived,
    required TResult Function(GroupsFailure value) groupsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GroupsAreLoading value)? groupsAreLoading,
    TResult Function(GroupsReceived value)? groupsReceived,
    TResult Function(GroupsFailure value)? groupsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GroupState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $GroupsAreLoadingCopyWith<$Res> {
  factory $GroupsAreLoadingCopyWith(
          GroupsAreLoading value, $Res Function(GroupsAreLoading) then) =
      _$GroupsAreLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsAreLoadingCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res>
    implements $GroupsAreLoadingCopyWith<$Res> {
  _$GroupsAreLoadingCopyWithImpl(
      GroupsAreLoading _value, $Res Function(GroupsAreLoading) _then)
      : super(_value, (v) => _then(v as GroupsAreLoading));

  @override
  GroupsAreLoading get _value => super._value as GroupsAreLoading;
}

/// @nodoc

class _$GroupsAreLoading implements GroupsAreLoading {
  const _$GroupsAreLoading();

  @override
  String toString() {
    return 'GroupState.groupsAreLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GroupsAreLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() groupsAreLoading,
    required TResult Function(List<Group> groups) groupsReceived,
    required TResult Function(FirestoreFailure failure) groupsFailure,
  }) {
    return groupsAreLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? groupsAreLoading,
    TResult Function(List<Group> groups)? groupsReceived,
    TResult Function(FirestoreFailure failure)? groupsFailure,
    required TResult orElse(),
  }) {
    if (groupsAreLoading != null) {
      return groupsAreLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GroupsAreLoading value) groupsAreLoading,
    required TResult Function(GroupsReceived value) groupsReceived,
    required TResult Function(GroupsFailure value) groupsFailure,
  }) {
    return groupsAreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GroupsAreLoading value)? groupsAreLoading,
    TResult Function(GroupsReceived value)? groupsReceived,
    TResult Function(GroupsFailure value)? groupsFailure,
    required TResult orElse(),
  }) {
    if (groupsAreLoading != null) {
      return groupsAreLoading(this);
    }
    return orElse();
  }
}

abstract class GroupsAreLoading implements GroupState {
  const factory GroupsAreLoading() = _$GroupsAreLoading;
}

/// @nodoc
abstract class $GroupsReceivedCopyWith<$Res> {
  factory $GroupsReceivedCopyWith(
          GroupsReceived value, $Res Function(GroupsReceived) then) =
      _$GroupsReceivedCopyWithImpl<$Res>;
  $Res call({List<Group> groups});
}

/// @nodoc
class _$GroupsReceivedCopyWithImpl<$Res> extends _$GroupStateCopyWithImpl<$Res>
    implements $GroupsReceivedCopyWith<$Res> {
  _$GroupsReceivedCopyWithImpl(
      GroupsReceived _value, $Res Function(GroupsReceived) _then)
      : super(_value, (v) => _then(v as GroupsReceived));

  @override
  GroupsReceived get _value => super._value as GroupsReceived;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(GroupsReceived(
      groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$GroupsReceived implements GroupsReceived {
  const _$GroupsReceived(this.groups);

  @override
  final List<Group> groups;

  @override
  String toString() {
    return 'GroupState.groupsReceived(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupsReceived &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  $GroupsReceivedCopyWith<GroupsReceived> get copyWith =>
      _$GroupsReceivedCopyWithImpl<GroupsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() groupsAreLoading,
    required TResult Function(List<Group> groups) groupsReceived,
    required TResult Function(FirestoreFailure failure) groupsFailure,
  }) {
    return groupsReceived(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? groupsAreLoading,
    TResult Function(List<Group> groups)? groupsReceived,
    TResult Function(FirestoreFailure failure)? groupsFailure,
    required TResult orElse(),
  }) {
    if (groupsReceived != null) {
      return groupsReceived(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GroupsAreLoading value) groupsAreLoading,
    required TResult Function(GroupsReceived value) groupsReceived,
    required TResult Function(GroupsFailure value) groupsFailure,
  }) {
    return groupsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GroupsAreLoading value)? groupsAreLoading,
    TResult Function(GroupsReceived value)? groupsReceived,
    TResult Function(GroupsFailure value)? groupsFailure,
    required TResult orElse(),
  }) {
    if (groupsReceived != null) {
      return groupsReceived(this);
    }
    return orElse();
  }
}

abstract class GroupsReceived implements GroupState {
  const factory GroupsReceived(List<Group> groups) = _$GroupsReceived;

  List<Group> get groups => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsReceivedCopyWith<GroupsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsFailureCopyWith<$Res> {
  factory $GroupsFailureCopyWith(
          GroupsFailure value, $Res Function(GroupsFailure) then) =
      _$GroupsFailureCopyWithImpl<$Res>;
  $Res call({FirestoreFailure failure});

  $FirestoreFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$GroupsFailureCopyWithImpl<$Res> extends _$GroupStateCopyWithImpl<$Res>
    implements $GroupsFailureCopyWith<$Res> {
  _$GroupsFailureCopyWithImpl(
      GroupsFailure _value, $Res Function(GroupsFailure) _then)
      : super(_value, (v) => _then(v as GroupsFailure));

  @override
  GroupsFailure get _value => super._value as GroupsFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(GroupsFailure(
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

class _$GroupsFailure implements GroupsFailure {
  const _$GroupsFailure(this.failure);

  @override
  final FirestoreFailure failure;

  @override
  String toString() {
    return 'GroupState.groupsFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupsFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $GroupsFailureCopyWith<GroupsFailure> get copyWith =>
      _$GroupsFailureCopyWithImpl<GroupsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() groupsAreLoading,
    required TResult Function(List<Group> groups) groupsReceived,
    required TResult Function(FirestoreFailure failure) groupsFailure,
  }) {
    return groupsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? groupsAreLoading,
    TResult Function(List<Group> groups)? groupsReceived,
    TResult Function(FirestoreFailure failure)? groupsFailure,
    required TResult orElse(),
  }) {
    if (groupsFailure != null) {
      return groupsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GroupsAreLoading value) groupsAreLoading,
    required TResult Function(GroupsReceived value) groupsReceived,
    required TResult Function(GroupsFailure value) groupsFailure,
  }) {
    return groupsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GroupsAreLoading value)? groupsAreLoading,
    TResult Function(GroupsReceived value)? groupsReceived,
    TResult Function(GroupsFailure value)? groupsFailure,
    required TResult orElse(),
  }) {
    if (groupsFailure != null) {
      return groupsFailure(this);
    }
    return orElse();
  }
}

abstract class GroupsFailure implements GroupState {
  const factory GroupsFailure(FirestoreFailure failure) = _$GroupsFailure;

  FirestoreFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsFailureCopyWith<GroupsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
