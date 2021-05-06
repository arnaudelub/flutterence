part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState.initial() = Initial;
  const factory GroupState.groupsAreLoading() = GroupsAreLoading;
  const factory GroupState.groupsReceived(List<Group> groups) = GroupsReceived;
  const factory GroupState.groupsFailure(FirestoreFailure failure) =
      GroupsFailure;
}
