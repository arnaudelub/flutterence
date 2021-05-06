import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/src/domain/user.dart';
import 'package:firestore_helper/firestore_helper.dart';
part 'user_dto.g.dart';
part 'user_dto.freezed.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @Default('')
    @JsonKey(ignore: true)
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
    @JsonKey(
      name: 'created_at',
      fromJson: UserDto._dateTimeFromTimestamp,
      toJson: UserDto._stringFromDateTime,
    )
        required DateTime creationDate,
    @ServerTimestampConverter()
    @JsonKey(name: 'update_at')
        required FieldValue updateDate,
    @JsonKey(name: 'notification_token')
        String? notificationToken,
    String? avatar,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      email: user.email,
      displayName: user.displayName,
      avatar: user.avatar,
      isAdmin: user.isAdmin,
      isSpecialGuest: user.isSpecialGuest,
      isFlutterTeam: user.isFlutterTeam,
      notificationEnabled: user.notificationEnabled,
      creationDate: user.creationDate,
      updateDate: FieldValue.serverTimestamp(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      UserDto.fromJson(doc.data()!).copyWith(id: doc.id);

  User toDomain() {
    return User(
      id: id,
      email: email,
      displayName: displayName,
      avatar: avatar,
      isAdmin: isAdmin,
      isSpecialGuest: isSpecialGuest,
      isFlutterTeam: isFlutterTeam,
      notificationEnabled: notificationEnabled,
      creationDate: creationDate,
    );
  }

  static DateTime _dateTimeFromTimestamp(Timestamp? startDate) {
    return DateTime.fromMillisecondsSinceEpoch(
        startDate!.millisecondsSinceEpoch);
  }

  static Timestamp _stringFromDateTime(DateTime? startDate) {
    return Timestamp.fromMillisecondsSinceEpoch(
        startDate!.millisecondsSinceEpoch);
  }
}
