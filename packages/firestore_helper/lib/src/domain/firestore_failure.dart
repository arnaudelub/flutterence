import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failure.freezed.dart';

@freezed
class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.serverError() = ServerError;
  const factory FirestoreFailure.unexpected() = Unexpected;
  const factory FirestoreFailure.insufficientPermission() =
      InsufficientPermission;
  const factory FirestoreFailure.emptyDocs() = EmptyDocs;
}
