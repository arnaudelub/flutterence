// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberDto _$_$_MemberDtoFromJson(Map<String, dynamic> json) {
  return _$_MemberDto(
    userId: json['user_id'] as String,
    displayName: json['display_name'] as String,
    avatar: json['avatar'] as String?,
  );
}

Map<String, dynamic> _$_$_MemberDtoToJson(_$_MemberDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'display_name': instance.displayName,
      'avatar': instance.avatar,
    };
