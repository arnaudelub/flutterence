// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@JsonKey(ignore: true)
          String id = '',
      required String email,
      required String displayName,
      @JsonKey(name: 'is_admin')
          required bool isAdmin,
      @JsonKey(name: 'is_special_guest')
          required bool isSpecialGuest,
      @JsonKey(name: 'is_flutter_team')
          required bool isFlutterTeam,
      @JsonKey(name: 'notification_enabled')
          required bool notificationEnabled,
      @JsonKey(name: 'created_at', fromJson: UserDto._dateTimeFromTimestamp, toJson: UserDto._stringFromDateTime)
          required DateTime creationDate,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          required FieldValue updateDate,
      @JsonKey(name: 'notification_token')
          String? notificationToken,
      String? avatar}) {
    return _UserDto(
      id: id,
      email: email,
      displayName: displayName,
      isAdmin: isAdmin,
      isSpecialGuest: isSpecialGuest,
      isFlutterTeam: isFlutterTeam,
      notificationEnabled: notificationEnabled,
      creationDate: creationDate,
      updateDate: updateDate,
      notificationToken: notificationToken,
      avatar: avatar,
    );
  }

  UserDto fromJson(Map<String, Object> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_special_guest')
  bool get isSpecialGuest => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_flutter_team')
  bool get isFlutterTeam => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_enabled')
  bool get notificationEnabled => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at',
      fromJson: UserDto._dateTimeFromTimestamp,
      toJson: UserDto._stringFromDateTime)
  DateTime get creationDate => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  @JsonKey(name: 'update_at')
  FieldValue get updateDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_token')
  String? get notificationToken => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String email,
      String displayName,
      @JsonKey(name: 'is_admin')
          bool isAdmin,
      @JsonKey(name: 'is_special_guest')
          bool isSpecialGuest,
      @JsonKey(name: 'is_flutter_team')
          bool isFlutterTeam,
      @JsonKey(name: 'notification_enabled')
          bool notificationEnabled,
      @JsonKey(name: 'created_at', fromJson: UserDto._dateTimeFromTimestamp, toJson: UserDto._stringFromDateTime)
          DateTime creationDate,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          FieldValue updateDate,
      @JsonKey(name: 'notification_token')
          String? notificationToken,
      String? avatar});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? isAdmin = freezed,
    Object? isSpecialGuest = freezed,
    Object? isFlutterTeam = freezed,
    Object? notificationEnabled = freezed,
    Object? creationDate = freezed,
    Object? updateDate = freezed,
    Object? notificationToken = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpecialGuest: isSpecialGuest == freezed
          ? _value.isSpecialGuest
          : isSpecialGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      isFlutterTeam: isFlutterTeam == freezed
          ? _value.isFlutterTeam
          : isFlutterTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationEnabled: notificationEnabled == freezed
          ? _value.notificationEnabled
          : notificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      notificationToken: notificationToken == freezed
          ? _value.notificationToken
          : notificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          String id,
      String email,
      String displayName,
      @JsonKey(name: 'is_admin')
          bool isAdmin,
      @JsonKey(name: 'is_special_guest')
          bool isSpecialGuest,
      @JsonKey(name: 'is_flutter_team')
          bool isFlutterTeam,
      @JsonKey(name: 'notification_enabled')
          bool notificationEnabled,
      @JsonKey(name: 'created_at', fromJson: UserDto._dateTimeFromTimestamp, toJson: UserDto._stringFromDateTime)
          DateTime creationDate,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          FieldValue updateDate,
      @JsonKey(name: 'notification_token')
          String? notificationToken,
      String? avatar});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? isAdmin = freezed,
    Object? isSpecialGuest = freezed,
    Object? isFlutterTeam = freezed,
    Object? notificationEnabled = freezed,
    Object? creationDate = freezed,
    Object? updateDate = freezed,
    Object? notificationToken = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpecialGuest: isSpecialGuest == freezed
          ? _value.isSpecialGuest
          : isSpecialGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      isFlutterTeam: isFlutterTeam == freezed
          ? _value.isFlutterTeam
          : isFlutterTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationEnabled: notificationEnabled == freezed
          ? _value.notificationEnabled
          : notificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as FieldValue,
      notificationToken: notificationToken == freezed
          ? _value.notificationToken
          : notificationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(ignore: true)
          this.id = '',
      required this.email,
      required this.displayName,
      @JsonKey(name: 'is_admin')
          required this.isAdmin,
      @JsonKey(name: 'is_special_guest')
          required this.isSpecialGuest,
      @JsonKey(name: 'is_flutter_team')
          required this.isFlutterTeam,
      @JsonKey(name: 'notification_enabled')
          required this.notificationEnabled,
      @JsonKey(name: 'created_at', fromJson: UserDto._dateTimeFromTimestamp, toJson: UserDto._stringFromDateTime)
          required this.creationDate,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          required this.updateDate,
      @JsonKey(name: 'notification_token')
          this.notificationToken,
      this.avatar})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String email;
  @override
  final String displayName;
  @override
  @JsonKey(name: 'is_admin')
  final bool isAdmin;
  @override
  @JsonKey(name: 'is_special_guest')
  final bool isSpecialGuest;
  @override
  @JsonKey(name: 'is_flutter_team')
  final bool isFlutterTeam;
  @override
  @JsonKey(name: 'notification_enabled')
  final bool notificationEnabled;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: UserDto._dateTimeFromTimestamp,
      toJson: UserDto._stringFromDateTime)
  final DateTime creationDate;
  @override
  @ServerTimestampConverter()
  @JsonKey(name: 'update_at')
  final FieldValue updateDate;
  @override
  @JsonKey(name: 'notification_token')
  final String? notificationToken;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'UserDto(id: $id, email: $email, displayName: $displayName, isAdmin: $isAdmin, isSpecialGuest: $isSpecialGuest, isFlutterTeam: $isFlutterTeam, notificationEnabled: $notificationEnabled, creationDate: $creationDate, updateDate: $updateDate, notificationToken: $notificationToken, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.isSpecialGuest, isSpecialGuest) ||
                const DeepCollectionEquality()
                    .equals(other.isSpecialGuest, isSpecialGuest)) &&
            (identical(other.isFlutterTeam, isFlutterTeam) ||
                const DeepCollectionEquality()
                    .equals(other.isFlutterTeam, isFlutterTeam)) &&
            (identical(other.notificationEnabled, notificationEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.notificationEnabled, notificationEnabled)) &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.updateDate, updateDate) ||
                const DeepCollectionEquality()
                    .equals(other.updateDate, updateDate)) &&
            (identical(other.notificationToken, notificationToken) ||
                const DeepCollectionEquality()
                    .equals(other.notificationToken, notificationToken)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(isAdmin) ^
      const DeepCollectionEquality().hash(isSpecialGuest) ^
      const DeepCollectionEquality().hash(isFlutterTeam) ^
      const DeepCollectionEquality().hash(notificationEnabled) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(updateDate) ^
      const DeepCollectionEquality().hash(notificationToken) ^
      const DeepCollectionEquality().hash(avatar);

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(ignore: true)
          String id,
      required String email,
      required String displayName,
      @JsonKey(name: 'is_admin')
          required bool isAdmin,
      @JsonKey(name: 'is_special_guest')
          required bool isSpecialGuest,
      @JsonKey(name: 'is_flutter_team')
          required bool isFlutterTeam,
      @JsonKey(name: 'notification_enabled')
          required bool notificationEnabled,
      @JsonKey(name: 'created_at', fromJson: UserDto._dateTimeFromTimestamp, toJson: UserDto._stringFromDateTime)
          required DateTime creationDate,
      @ServerTimestampConverter()
      @JsonKey(name: 'update_at')
          required FieldValue updateDate,
      @JsonKey(name: 'notification_token')
          String? notificationToken,
      String? avatar}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_admin')
  bool get isAdmin => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_special_guest')
  bool get isSpecialGuest => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_flutter_team')
  bool get isFlutterTeam => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'notification_enabled')
  bool get notificationEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: UserDto._dateTimeFromTimestamp,
      toJson: UserDto._stringFromDateTime)
  DateTime get creationDate => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  @JsonKey(name: 'update_at')
  FieldValue get updateDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'notification_token')
  String? get notificationToken => throw _privateConstructorUsedError;
  @override
  String? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
