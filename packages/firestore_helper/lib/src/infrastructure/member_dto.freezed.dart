// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberDto _$MemberDtoFromJson(Map<String, dynamic> json) {
  return _MemberDto.fromJson(json);
}

/// @nodoc
class _$MemberDtoTearOff {
  const _$MemberDtoTearOff();

  _MemberDto call(
      {@JsonKey(name: 'user_id') required String userId,
      @JsonKey(name: 'display_name') required String displayName,
      String? avatar}) {
    return _MemberDto(
      userId: userId,
      displayName: displayName,
      avatar: avatar,
    );
  }

  MemberDto fromJson(Map<String, Object> json) {
    return MemberDto.fromJson(json);
  }
}

/// @nodoc
const $MemberDto = _$MemberDtoTearOff();

/// @nodoc
mixin _$MemberDto {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDtoCopyWith<MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDtoCopyWith<$Res> {
  factory $MemberDtoCopyWith(MemberDto value, $Res Function(MemberDto) then) =
      _$MemberDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'display_name') String displayName,
      String? avatar});
}

/// @nodoc
class _$MemberDtoCopyWithImpl<$Res> implements $MemberDtoCopyWith<$Res> {
  _$MemberDtoCopyWithImpl(this._value, this._then);

  final MemberDto _value;
  // ignore: unused_field
  final $Res Function(MemberDto) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? displayName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MemberDtoCopyWith<$Res> implements $MemberDtoCopyWith<$Res> {
  factory _$MemberDtoCopyWith(
          _MemberDto value, $Res Function(_MemberDto) then) =
      __$MemberDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'display_name') String displayName,
      String? avatar});
}

/// @nodoc
class __$MemberDtoCopyWithImpl<$Res> extends _$MemberDtoCopyWithImpl<$Res>
    implements _$MemberDtoCopyWith<$Res> {
  __$MemberDtoCopyWithImpl(_MemberDto _value, $Res Function(_MemberDto) _then)
      : super(_value, (v) => _then(v as _MemberDto));

  @override
  _MemberDto get _value => super._value as _MemberDto;

  @override
  $Res call({
    Object? userId = freezed,
    Object? displayName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_MemberDto(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberDto extends _MemberDto {
  _$_MemberDto(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'display_name') required this.displayName,
      this.avatar})
      : super._();

  factory _$_MemberDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MemberDtoFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'MemberDto(userId: $userId, displayName: $displayName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MemberDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  _$MemberDtoCopyWith<_MemberDto> get copyWith =>
      __$MemberDtoCopyWithImpl<_MemberDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MemberDtoToJson(this);
  }
}

abstract class _MemberDto extends MemberDto {
  factory _MemberDto(
      {@JsonKey(name: 'user_id') required String userId,
      @JsonKey(name: 'display_name') required String displayName,
      String? avatar}) = _$_MemberDto;
  _MemberDto._() : super._();

  factory _MemberDto.fromJson(Map<String, dynamic> json) =
      _$_MemberDto.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @override
  String? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MemberDtoCopyWith<_MemberDto> get copyWith =>
      throw _privateConstructorUsedError;
}
