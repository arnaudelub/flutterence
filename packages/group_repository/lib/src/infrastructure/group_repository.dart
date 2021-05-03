import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:group_repository/src/domain/group.dart';
import 'package:firestore_helper/firestore_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:group_repository/src/domain/i_group_repository.dart';
import 'package:group_repository/src/infrastructure/group_dto.dart';

/// Call this top-level function to parse json data within an isolate
Future<Either<FirestoreFailure, List<Group>>> fetchGroupsAndParseFromIsolate(
    FirebaseFirestore firestore) async {
  try {
    final result = await firestore.collection(groupCollectionName).get();
    final groups = await compute(parseGroups, result.docs);
    return right(groups);
  } on FirebaseException catch (e) {
    if (e.code == kFirebaseCodePermissionDenied) {
      return left(const FirestoreFailure.insufficientPermission());
    }
    return left(const FirestoreFailure.serverError());
  }
}

List<Group> parseGroups(List<QueryDocumentSnapshot> docs) {
  print(docs.length);
  return docs
      .map<Group>((QueryDocumentSnapshot groupSnap) =>
          GroupDto.fromFirestore(groupSnap).toDomain())
      .toList();
}

class GroupRepository implements IGroupRepository {
  GroupRepository(this._firestore);

  final FirebaseFirestore _firestore;

  static Future<Either<FirestoreFailure, List<Group>>>
      getGroupsFromIsolate() async {
    return fetchGroupsAndParseFromIsolate(FirebaseFirestore.instance);
  }

  @override
  Future<Either<FirestoreFailure, Unit>> addGroup(Group group) {
    // TODO: implement addGroup
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, Unit>> deleteGroup(String documentId) {
    // TODO: implement deleteGroup
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, List<Group>>> getGroupByCountry(
      String countryId) {
    // TODO: implement getGroupByCountry
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, Group>> getGroupById(String documentId) {
    // TODO: implement getGroupById
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, List<Group>>> getGroups() async {
    try {
      final result = await _firestore.collection(groupCollectionName).get();
      final groups = result.docs
          .map<Group>((doc) => GroupDto.fromFirestore(doc).toDomain())
          .toList();
      return right(groups);
    } on FirebaseException catch (e) {
      if (e.code == kFirebaseCodePermissionDenied) {
        return left(const FirestoreFailure.insufficientPermission());
      }

      return left(const FirestoreFailure.unexpected());
    }
  }

  @override
  Future<Either<FirestoreFailure, List<Group>>> getGroupsFromMainGroupId(
      String mainGroupId) {
    // TODO: implement getGroupsFromMainGroupId
    throw UnimplementedError();
  }

  @override
  Stream<Either<FirestoreFailure, List<Group>>> getLastGroupsStream() {
    // TODO: implement getLastGroupsStream
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, List<Group>>> getPaginatedGroups(
      {String? startWith, int pagination = 10}) {
    // TODO: implement getPaginatedGroups
    throw UnimplementedError();
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateGroup(Group group) {
    // TODO: implement updateGroup
    throw UnimplementedError();
  }
}
