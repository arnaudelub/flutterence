// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupDto _$_$_GroupDtoFromJson(Map<String, dynamic> json) {
  return _$_GroupDto(
    name: json['name'] as String,
    countryId: json['country_id'] as String,
    subGroups:
        (json['sub_groups'] as List<dynamic>).map((e) => e as String?).toList(),
    members: GroupDto._memberFromJson(json['members'] as List<dynamic>),
    events: (json['events'] as List<dynamic>).map((e) => e as String?).toList(),
    topics: (json['topics'] as List<dynamic>).map((e) => e as String?).toList(),
    isMainGroup: json['is_main_group'] as bool,
    creationDate:
        GroupDto._dateTimeFromTimestamp(json['created_at'] as Timestamp?),
    mainGroupId: json['main_group_id'] as String?,
    updateDate:
        const ServerTimestampConverter().fromJson(json['update_at'] as Object),
    city: json['city'] as String?,
    picture: json['picture'] as String?,
  );
}

Map<String, dynamic> _$_$_GroupDtoToJson(_$_GroupDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country_id': instance.countryId,
      'sub_groups': instance.subGroups,
      'members': GroupDto._memberToJson(instance.members),
      'events': instance.events,
      'topics': instance.topics,
      'is_main_group': instance.isMainGroup,
      'created_at': GroupDto._timestampFromDateTime(instance.creationDate),
      'main_group_id': instance.mainGroupId,
      'update_at': const ServerTimestampConverter().toJson(instance.updateDate),
      'city': instance.city,
      'picture': instance.picture,
    };
