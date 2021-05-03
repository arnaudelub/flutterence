import 'package:firestore_helper/firestore_helper.dart';
import 'package:group_repository/group_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IGroupRepository {
  Future<Either<FirestoreFailure, Unit>> addGroup(Group group);
  Future<Either<FirestoreFailure, List<Group>>> getGroups();
  Future<Either<FirestoreFailure, Group>> getGroupById(String documentId);
  Future<Either<FirestoreFailure, List<Group>>> getGroupByCountry(
      String countryId);
  Future<Either<FirestoreFailure, List<Group>>> getGroupsFromMainGroupId(
      String mainGroupId);
  Future<Either<FirestoreFailure, List<Group>>> getPaginatedGroups(
      {String? startWith, int pagination = 10});
  Future<Either<FirestoreFailure, Unit>> updateGroup(Group group);
  Future<Either<FirestoreFailure, Unit>> deleteGroup(String documentId);

  //If i want to show only the last 3 or 5 last created group and
  // the list should update itself, then i'll use this stream
  Stream<Either<FirestoreFailure, List<Group>>> getLastGroupsStream();
}
