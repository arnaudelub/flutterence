import 'package:firestore_helper/firestore_helper.dart';
import 'package:dartz/dartz.dart';

abstract class ILanguageRepository {
  Future<Either<FirestoreFailure, List<Language>>> getLanguages();
}
