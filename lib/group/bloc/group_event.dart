part of 'group_bloc.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.fetchGroupsAsked() = FetchGroupsAsked;
  const factory GroupEvent.getGroupsAsked() = GetGroupAsked;
}
