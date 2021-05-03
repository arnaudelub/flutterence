import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firestore_helper/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:group_repository/src/domain/group.dart';

part 'group_dto.freezed.dart';
part 'group_dto.g.dart';

@freezed
class GroupDto with _$GroupDto {
  const GroupDto._();

  factory GroupDto({
    @Default('') @JsonKey(ignore: true) String id,
    required String name,
    @JsonKey(name: 'country_id') required String countryId,
    @JsonKey(name: 'sub_groups') required List<String?> subGroups,
    @JsonKey(fromJson: GroupDto._memberFromJson, toJson: GroupDto._memberToJson)
        required List<Member?> members,
    required List<String?> events,
    required List<String?> topics,
    @JsonKey(name: 'is_main_group') required bool isMainGroup,
    @JsonKey(name: 'created_at', fromJson: GroupDto._dateTimeFromTimestamp, toJson: GroupDto._timestampFromDateTime)
        required DateTime creationDate,
    @JsonKey(name: 'main_group_id') String? mainGroupId,
    @ServerTimestampConverter()
    @JsonKey(name: 'update_at')
        required FieldValue updateDate,
    String? city,
    String? picture,
  }) = _GroupDto;

  factory GroupDto.fromDomain(Group group) => GroupDto(
        id: group.id,
        name: group.name,
        countryId: group.countryId,
        subGroups: group.subGroups,
        members: group.members,
        events: group.events,
        topics: group.topics,
        isMainGroup: group.isMainGroup,
        mainGroupId: group.mainGroupId,
        city: group.city,
        picture: group.picture,
        creationDate: group.creationDate,
        updateDate: FieldValue.serverTimestamp(),
      );

  factory GroupDto.fromJson(Map<String, dynamic> json) =>
      _$GroupDtoFromJson(json);

  factory GroupDto.fromFirestore(DocumentSnapshot doc) =>
      GroupDto.fromJson(doc.data()!).copyWith(id: doc.id);

  Group toDomain() => Group(
        id: id,
        name: name,
        countryId: countryId,
        subGroups: subGroups,
        members: members,
        events: events,
        topics: topics,
        isMainGroup: isMainGroup,
        mainGroupId: mainGroupId,
        city: city,
        picture: picture,
        creationDate: creationDate,
      );

  static DateTime _dateTimeFromTimestamp(Timestamp? startDate) =>
      DateTime.fromMillisecondsSinceEpoch(startDate!.microsecondsSinceEpoch);

  static Timestamp _timestampFromDateTime(DateTime? startDate) =>
      Timestamp.fromMillisecondsSinceEpoch(startDate!.millisecondsSinceEpoch);

  static List<Member> _memberFromJson(List<dynamic?> json) => json.isEmpty
      ? []
      : json
          .map<Member>((member) => MemberDto.fromJson(member).toDomain())
          .toList();

  static List<Map<String, dynamic>> _memberToJson(List<Member?> members) =>
      members.isEmpty
          ? []
          : members
              .map((member) => MemberDto.fromDomain(member!).toJson())
              .toList();
}
