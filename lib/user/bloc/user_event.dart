part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.setUserAsked() = SetUserAsked;
  const factory UserEvent.userReceived(
      Either<FirestoreFailure, User> userOrFailure) = UserReceived;
  const factory UserEvent.addUserasked() = AddUserAsked;
}
