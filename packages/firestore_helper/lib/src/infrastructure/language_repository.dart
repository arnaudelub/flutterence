import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_helper/firestore_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:firestore_helper/src/domain/i_language_repository.dart';
import 'package:firestore_helper/src/domain/language.dart';

class LanguageRepository implements ILanguageRepository {
  LanguageRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<FirestoreFailure, List<Language>>> getLanguages() async {
    try {
      final snapshot =
          await _firestore.collection(languageCollectionName).get();
      return right<FirestoreFailure, List<Language>>(snapshot.docs
          .map((doc) => LanguageDto.fromFirestore(doc).toDomain())
          .toList());
    } on FirebaseException catch (e) {
      if (e == kFirebaseCodePermissionDenied) {
        return left(const FirestoreFailure.insufficientPermission());
      }
      return left(const FirestoreFailure.unexpected());
    }
  }
}
