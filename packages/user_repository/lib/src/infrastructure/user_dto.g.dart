// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    email: json['email'] as String,
    displayName: json['displayName'] as String,
    isAdmin: json['is_admin'] as bool,
    isSpecialGuest: json['is_special_guest'] as bool,
    isFlutterTeam: json['is_flutter_team'] as bool,
    notificationEnabled: json['notification_enabled'] as bool,
    creationDate:
        UserDto._dateTimeFromTimestamp(json['created_at'] as Timestamp?),
    updateDate:
        const ServerTimestampConverter().fromJson(json['update_at'] as Object),
    notificationToken: json['notification_token'] as String?,
    avatar: json['avatar'] as String?,
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'displayName': instance.displayName,
      'is_admin': instance.isAdmin,
      'is_special_guest': instance.isSpecialGuest,
      'is_flutter_team': instance.isFlutterTeam,
      'notification_enabled': instance.notificationEnabled,
      'created_at': UserDto._stringFromDateTime(instance.creationDate),
      'update_at': const ServerTimestampConverter().toJson(instance.updateDate),
      'notification_token': instance.notificationToken,
      'avatar': instance.avatar,
    };
