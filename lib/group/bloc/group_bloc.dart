import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:group_repository/group_repository.dart';

part 'group_event.dart';
part 'group_state.dart';

part 'group_bloc.freezed.dart';

@injectable
class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc(this._groupRepository) : super(GroupState.initial());

  final IGroupRepository _groupRepository;
  @override
  Stream<GroupState> mapEventToState(
    GroupEvent event,
  ) async* {
    yield* event.map(fetchGroupsAsked: (FetchGroupsAsked value) async* {
      yield const GroupState.groupsAreLoading();
      final failureOrSuccess = await GroupRepository.getGroupsFromIsolate();
      yield failureOrSuccess.fold(
        (l) => GroupState.groupsFailure(l),
        (r) => GroupState.groupsReceived(r),
      );
    }, getGroupsAsked: (GetGroupAsked data) async* {
      yield const GroupState.groupsAreLoading();
      final failureOrSuccess = await _groupRepository.getGroups();
      yield failureOrSuccess.fold(
        (l) => GroupState.groupsFailure(l),
        (r) => GroupState.groupsReceived(r),
      );
    });
  }
}
