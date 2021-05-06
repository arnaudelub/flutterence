import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firestore_helper/firestore_helper.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:push_notification/push_notification.dart';
import 'package:user_repository/user_repository.dart';
import 'package:helper_repository/helper_repository.dart';

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockAuthFacade extends Mock implements IAuthFacade {}

class MockPushNotification extends Mock implements PushNotification {}

class MockWriteBatch extends Mock implements WriteBatch {}

// ignore: subtype_of_sealed_class
class MockCollectionReference extends Mock
    implements CollectionReference<Map<String, dynamic>> {}

class MockDocumentReference extends Mock
    implements DocumentReference<Map<String, dynamic>> {}

// ignore: subtype_of_sealed_class
class MockDocumentSnapshot extends Mock
    implements DocumentSnapshot<Map<String, dynamic>> {}

class MockFirestoreFailure extends Mock implements FirestoreFailure {}

class MockAppService extends Mock implements IAppService {}

void main() {
  group("User repository", () {
    MockFirebaseFirestore? _firestore;
    MockAuthFacade? _authFacade;
    MockPushNotification? _pushNotifications;
    IUserRepository? _repository;
    MockCollectionReference? mockCollectionReference;
    MockDocumentReference? mockDocumentReference;
    User user;
    MockWriteBatch? _mockWriteBatch;
    IAppService? _appService;

    void stubDocumentReference() {
      when(() => _firestore!.collection(any()))
          .thenReturn(mockCollectionReference!);
      when(() => mockCollectionReference!.doc(any()))
          .thenReturn(mockDocumentReference!);
    }

    void stubBatch() {
      when(() => _firestore!.batch()).thenReturn(_mockWriteBatch!);
      when(() => _mockWriteBatch!.set(mockDocumentReference!, anything))
          .thenAnswer((_) {});
    }

    void stubCommit() async {
      stubBatch();
      when(() => _mockWriteBatch!.commit())
          .thenAnswer((_) async => right(unit));
    }

    void stubBatchWithInsuficientPermissionErreur() {
      stubBatch();
      when(() => _mockWriteBatch!.commit()).thenAnswer((_) async =>
          throw FirebaseException(
              plugin: '', code: kFirebaseCodePermissionDenied));
    }

    void stubBatchWithUnexpectedError() {
      stubBatch();
      when(() => _mockWriteBatch!.commit()).thenAnswer(
          (_) async => throw FirebaseException(plugin: '', code: 'foo'));
    }

    void stubBatchWithPlatformException() {
      stubBatch();
      when(() => _mockWriteBatch!.commit())
          .thenAnswer((_) async => throw PlatformException(code: 'foo'));
    }

    void stubPushNotificationToken() {
      when(() => _pushNotifications!.token)
          .thenAnswer((_) async => await 'foo');
    }

    void stubkIsWeb() {
      when(() => _appService!.getkIsWeb()).thenReturn(true);
    }

    void stubkIsNotWeb() {
      when(() => _appService!.getkIsWeb()).thenReturn(false);
    }

    setUp(() {
      _firestore = MockFirebaseFirestore();
      _authFacade = MockAuthFacade();
      _pushNotifications = MockPushNotification();
      mockCollectionReference = MockCollectionReference();
      mockDocumentReference = MockDocumentReference();
      _appService = MockAppService();
      _repository = UserRepository(
          _firestore!, _authFacade!, _pushNotifications!, _appService!);
      _mockWriteBatch = MockWriteBatch();
      user = User(
          id: '',
          email: '',
          displayName: '',
          isAdmin: false,
          isSpecialGuest: false,
          isFlutterTeam: false,
          notificationEnabled: false,
          creationDate: DateTime.now());
    });

    test("When class is first instanciated, user should be null", () {
      expect(_repository!.user, equals(null));
    });
    test("When class is first instanciated, tokenUpdated should be false", () {
      expect(_repository!.tokenUpdated, equals(false));
    });
    test("When class is first instanciated, notificationToken should be null",
        () {
      expect(_repository!.notificationToken, equals(null));
    });
    test(
        "When listening to Stream getUser(), then the actual User chould be emitted",
        () {
      user = User(
          id: '',
          email: '',
          displayName: '',
          isAdmin: false,
          isSpecialGuest: false,
          isFlutterTeam: false,
          notificationEnabled: false,
          creationDate: DateTime.now());
      final stream = _repository!.getUser();
      expectLater(stream, emits(user));
      _repository!.userStream.add(user);
    });
    test("When calling resetUser(), then currentUser should be null", () {
      _repository!.resetUser();
      expect(_repository!.currentUser, equals(null));
    });

    group("Adding a new user", () {
      setUp(() {
        _firestore = MockFirebaseFirestore();
        _mockWriteBatch = MockWriteBatch();
        _appService = MockAppService();
        _repository = UserRepository(
            _firestore!, _authFacade!, _pushNotifications!, _appService!);
      });
      test("When the user is created, then it should return right(unit)",
          () async {
        user = User(
            id: '',
            email: '',
            displayName: '',
            isAdmin: false,
            isSpecialGuest: false,
            isFlutterTeam: false,
            notificationEnabled: false,
            creationDate: DateTime.now());
        stubkIsNotWeb();
        stubDocumentReference();
        stubCommit();
        stubPushNotificationToken();
        final result = await _repository!.addUser(user: user);
        verify(_firestore!.batch).called(1);
        verify(() => _pushNotifications!.token).called(1);
        verify(() => _mockWriteBatch!.commit()).called(1);
        verify(() => _mockWriteBatch!.set(mockDocumentReference!, anything))
            .called(1);
        expect(result, right(unit));
      }, tags: {'adduserOK', 'adduser'});

      test(
          "When the user creation failed with insuficientPermission error,"
          " then it should return left(FirestoreFailure.insuficientPermission)",
          () async {
        user = User(
            id: '',
            email: '',
            displayName: '',
            isAdmin: false,
            isSpecialGuest: false,
            isFlutterTeam: false,
            notificationEnabled: false,
            creationDate: DateTime.now());
        stubkIsNotWeb();
        stubPushNotificationToken();
        stubDocumentReference();
        stubBatchWithInsuficientPermissionErreur();
        final result = await _repository!.addUser(user: user);
        verify(_firestore!.batch).called(1);
        verify(() => _pushNotifications!.token).called(1);
        verify(() => _mockWriteBatch!.commit()).called(1);
        verify(() => _mockWriteBatch!.set(mockDocumentReference!, anything))
            .called(1);
        expect(result,
            equals(left(const FirestoreFailure.insufficientPermission())));
      }, tags: {'adduser', 'adduserKO1'});
      test(
          "When the user creation failed with an error,"
          " then it should return left(FirestoreFailure.unexpected)", () async {
        user = User(
            id: '',
            email: '',
            displayName: '',
            isAdmin: false,
            isSpecialGuest: false,
            isFlutterTeam: false,
            notificationEnabled: false,
            creationDate: DateTime.now());
        stubkIsNotWeb();
        stubPushNotificationToken();
        stubDocumentReference();
        stubBatchWithUnexpectedError();
        final result = await _repository!.addUser(user: user);
        verify(_firestore!.batch).called(1);
        verify(() => _pushNotifications!.token).called(1);
        verify(() => _mockWriteBatch!.commit()).called(1);
        verify(() => _mockWriteBatch!.set(mockDocumentReference!, anything))
            .called(1);
        expect(result, equals(left(const FirestoreFailure.unexpected())));
      }, tags: {'adduser', 'adduserKO2'});
      test(
          "When the user creation failed with an PlatformException,"
          " then it should return left(FirestoreFailure.unexpected)", () async {
        user = User(
            id: '',
            email: '',
            displayName: '',
            isAdmin: false,
            isSpecialGuest: false,
            isFlutterTeam: false,
            notificationEnabled: false,
            creationDate: DateTime.now());
        stubkIsNotWeb();
        stubBatchWithPlatformException();
        stubDocumentReference();
        stubPushNotificationToken();
        final result = await _repository!.addUser(user: user);
        expect(result, left(const FirestoreFailure.unexpected()));
      }, tags: {'adduser', 'adduserKO3'});
    });
    test("When kIsWeb, pushNotification.token should not be checked", () async {
      user = User(
          id: '',
          email: '',
          displayName: '',
          isAdmin: false,
          isSpecialGuest: false,
          isFlutterTeam: false,
          notificationEnabled: false,
          creationDate: DateTime.now());
      stubkIsWeb();
      stubDocumentReference();
      stubCommit();
      stubPushNotificationToken();
      await _repository!.addUser(user: user);
      verify(_firestore!.batch).called(1);
      verifyNever(() => _pushNotifications!.token);
    }, tags: {'adduser', 'kIsWeb'});
  });
}
