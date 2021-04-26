part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = Initial;
  const factory UserState.userIsLoading() = UserIsLoading;
  const factory UserState.userFailure(FirestoreFailure failure) = UserFailure;
  const factory UserState.userSuccess() = UserSuccess;
}
