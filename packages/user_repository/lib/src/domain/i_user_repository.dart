import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firestore_helper/firestore_helper.dart';
import 'package:rxdart/rxdart.dart';
import 'package:user_repository/src/domain/user.dart';

abstract class IUserRepository {
  bool tokenUpdated = false;
  String? notificationToken;
  User? currentUser;
  final StreamController<User> userStream = BehaviorSubject<User>();
  User? get user;
  Future<Either<FirestoreFailure, Unit>> addUser({required User user});
  Future<void> checkNotificationToken();
  Stream<User> getUser();
  Future<Either<FirestoreFailure, User>> readOne({required String userID});
  Future<Either<FirestoreFailure, User>> readOneWithEmail(
      {required String email});
  void resetUser();
  Stream<Either<FirestoreFailure, User>?> setUser();
  Future<Either<FirestoreFailure, Unit>> updateUser({required User user});
}
