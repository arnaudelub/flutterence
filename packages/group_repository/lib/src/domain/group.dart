import 'package:firestore_helper/firestore_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';

@freezed
class Group with _$Group {
  const factory Group({
    required String id,
    required String name,
    required String countryId,
    required List<String?> subGroups,
    required List<Member?> members, // TODO: create Member model
    required List<String?> events,
    required DateTime creationDate,
    required bool isMainGroup,
    required List<String?> topics,
    String? mainGroupId,
    String? city,
    String? picture,
  }) = _Group;

  factory Group.empty() => Group(
        id: '',
        name: '',
        countryId: '',
        subGroups: [],
        members: [],
        events: [],
        topics: [],
        isMainGroup: false,
        creationDate: DateTime.now(),
      );
}
