import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failure.freezed.dart';

const kFirebaseCodeEmailAlreadyInUse = 'email-already-in-use';
const kFirebaseCodeInvalidEmail = 'invalid-email';
const kFirebaseCodeWeakPassword = 'weak-password';
const kFirebaseCodeOperationNotAllowed = 'operation-not-allowed';
const kFirebaseCodeInvalidCredentials = 'invalid-credential';
const kFirebaseCodePermissionDenied = 'permission-denied';

@freezed
class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.serverError() = ServerError;
  const factory FirestoreFailure.unexpected() = Unexpected;
  const factory FirestoreFailure.insufficientPermission() =
      InsufficientPermission;
  const factory FirestoreFailure.emptyDocs() = EmptyDocs;
}
