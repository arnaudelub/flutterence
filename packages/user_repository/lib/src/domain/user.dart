import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String displayName,
    required bool isAdmin,
    required bool isSpecialGuest,
    required bool isFlutterTeam,
    required bool notificationEnabled,
    required DateTime creationDate,
    String? avatar,
    String? notificationToken,
  }) = _User;

  factory User.empty() => User(
        id: '',
        email: '',
        displayName: '',
        isAdmin: false,
        isSpecialGuest: false,
        isFlutterTeam: false,
        notificationEnabled: true,
        creationDate: DateTime.now(),
      );
}
