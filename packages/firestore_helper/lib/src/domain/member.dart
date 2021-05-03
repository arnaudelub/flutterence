import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required String userId,
    required String displayName,
    String? avatar,
  }) = _Member;

  factory Member.empty() => Member(
        userId: '',
        displayName: '',
      );
}
