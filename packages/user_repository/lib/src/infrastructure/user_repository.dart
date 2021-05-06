import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:push_notification/push_notification.dart';
import 'package:user_repository/src/domain/i_user_repository.dart';
import 'package:user_repository/src/domain/user.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firestore_helper/firestore_helper.dart';

import 'user_dto.dart';

class UserRepository implements IUserRepository {
  UserRepository(this._firestore, this._auth, this._pushNotificationsManager);

  final FirebaseFirestore _firestore;
  final IAuthFacade _auth;
  final PushNotification _pushNotificationsManager;

  User? currentUser;

  final StreamController<User> userStream = BehaviorSubject<User>();

  String? notificationToken;
  bool tokenUpdated = false;

  @override
  User get user => currentUser!;

  @override
  Stream<User> getUser() {
    return userStream.stream;
  }

  @override
  void resetUser() {
    currentUser = null;
  }

  void _setUserStream(User user) {
    userStream.add(user);
    currentUser = user;

    //notifyListeners();
  }

  @override
  Future<Either<FirestoreFailure, Unit>> addUser({required User user}) async {
    final _batch = _firestore.batch();
    notificationToken = 'foo';
    if (!kIsWeb) {
      notificationToken = await _pushNotificationsManager.token;
    }
    try {
      final userDto = UserDto.fromDomain(user.copyWith(
        creationDate: DateTime.now(),
      )).copyWith(notificationToken: notificationToken);
      _batch.set(_firestore.collection(userCollectionName).doc(user.id),
          userDto.toJson());
      await _batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const FirestoreFailure.insufficientPermission());
      }
      return left(const FirestoreFailure.unexpected());
    } on PlatformException catch (_) {
      return left(const FirestoreFailure.unexpected());
    }
  }

  @override
  Future<void> checkNotificationToken() async {
    if (!kIsWeb && !tokenUpdated) {
      final notificationToken = await _pushNotificationsManager.token;
      if (notificationToken != user.notificationToken) {
        await _updateUserNotificationToken(notificationToken!);
        tokenUpdated = true;
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, User>> readOne(
      {required String userID}) async {
    try {
      final doc =
          await _firestore.collection(userCollectionName).doc(userID).get();
      if (doc.exists) {
        return right(UserDto.fromFirestore(doc).toDomain());
      } else {
        return left(const FirestoreFailure.emptyDocs());
      }
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const FirestoreFailure.insufficientPermission());
      }

      return left(const FirestoreFailure.unexpected());
    }
  }

  @override
  Future<Either<FirestoreFailure, User>> readOneWithEmail(
      {required String email}) async {
    try {
      final doc = await _firestore
          .collection(userCollectionName)
          .where('email', isEqualTo: email)
          .get();
      if (doc.size == 0) {
        return left(const FirestoreFailure.emptyDocs());
      }
      final userDomain = UserDto.fromFirestore(doc.docs.first).toDomain();
      return right(userDomain);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const FirestoreFailure.insufficientPermission());
      }

      return left(const FirestoreFailure.unexpected());
    }
  }

  @override
  Stream<Either<FirestoreFailure, User>?> setUser() async* {
    final user = _auth.getSignedInUser();
    final snap =
        _firestore.collection(userCollectionName).doc(user!.uid).snapshots();
    yield* snap.map((DocumentSnapshot<Map<String, dynamic>> snapshot) {
      if (snapshot.exists) {
        final connectedUser = UserDto.fromFirestore(snapshot).toDomain();
        _setUserStream(connectedUser);
        checkNotificationToken();
        return right<FirestoreFailure, User>(currentUser!);
      } else {
        throw UnimplementedError('empty-document');
      }
    }).onErrorReturnWith((e) {
      print(e);
      if (e is UnimplementedError) {
        if (e.message == 'empty-document') {
          return left(const FirestoreFailure.emptyDocs());
        }
      }
      if (e is FirebaseException) {
        if (e.code.contains('permission-denied')) {
          return left(const FirestoreFailure.insufficientPermission());
        }
      }
      return left(const FirestoreFailure.unexpected());
    });
  }

  @override
  Future<Either<FirestoreFailure, Unit>> updateUser(
      {required User user}) async {
    final _batch = _firestore.batch();
    try {
      final userDto = UserDto.fromDomain(user);
      _batch.update(_firestore.collection(userCollectionName).doc(user.id),
          userDto.toJson());
      await _batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const FirestoreFailure.insufficientPermission());
      }

      return left(const FirestoreFailure.serverError());
    } on PlatformException catch (_) {
      return left(const FirestoreFailure.unexpected());
    }
  }

  Future<void> _updateUserNotificationToken(String token) async {
    final _batch = _firestore.batch()
      ..update(_firestore.collection(userCollectionName).doc(user.id),
          {'notification_token': token});
    await _batch.commit();
  }
}
