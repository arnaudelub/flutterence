import 'package:dartz/dartz.dart';
import 'package:user_repository/src/domain/user.dart';
import 'package:firestore_helper/firestore_helper.dart';

abstract class IUserRepository {
  User get user;
  Future<Either<FirestoreFailure, Unit>> addUser({required User user});
  Future<Either<FirestoreFailure, Unit>> updateUser({required User user});
  Future<Either<FirestoreFailure, User>> readOne({required String userID});
  Future<Either<FirestoreFailure, User>> readOneWithEmail(
      {required String email});
  Stream<Either<FirestoreFailure, User>?> setUser();
  Future<void> checkNotificationToken();
  Stream<User> getUser();
  void resetUser();
}
