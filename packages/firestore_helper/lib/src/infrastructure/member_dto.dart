import 'package:firestore_helper/src/domain/member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_dto.freezed.dart';
part 'member_dto.g.dart';

@freezed
class MemberDto with _$MemberDto {
  const MemberDto._();

  factory MemberDto({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'display_name') required String displayName,
    String? avatar,
  }) = _MemberDto;

  factory MemberDto.fromDomain(Member member) {
    return MemberDto(
        userId: member.userId,
        displayName: member.displayName,
        avatar: member.avatar);
  }

  factory MemberDto.fromJson(Map<String, dynamic> json) =>
      _$MemberDtoFromJson(json);

  Member toDomain() =>
      Member(userId: userId, displayName: displayName, avatar: avatar);
}
