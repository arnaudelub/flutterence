import 'package:firestore_helper/firestore_helper.dart' as firestore;
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:flutterence/l10n/l10n.dart';

class FailureMapper {
  static String authFailureMapper(AuthFailure failure, AppLocalizations l10n) =>
      failure.map(
          invalidCredentials: (InvalidCredentials value) =>
              l10n.invalidCredentials,
          weakPassword: (WeakPassword value) => l10n.weakPassword,
          invalidEmail: (InvalidEmail value) => l10n.invalidEmail,
          serverError: (ServerError value) => l10n.serverError,
          operationNotAllowed: (OperationNotAllowed value) =>
              l10n.operationNotAllowed,
          wrongIosVersion: (WrongIosVersion value) => l10n.wrongIosVersion,
          cancelledByUser: (CancelledByUser value) => l10n.cancelledByUser,
          invalidEmailAndPasswordCombination:
              (InvalidEmailAndPasswordCombination value) =>
                  l10n.invalidEmailAndPasswordCombination,
          emailAlreadyInUse: (EmailAlreadyInUse value) =>
              l10n.emailAlreadyInUse);

  static String firestoreFailureMapper(
          firestore.FirestoreFailure failure, AppLocalizations l10n) =>
      failure.map(
          serverError: (firestore.ServerError _) => l10n.serverError,
          unexpected: (firestore.Unexpected _) => l10n.unexpectedError,
          insufficientPermission: (firestore.InsufficientPermission _) =>
              l10n.insufficientPermission,
          emptyDocs: (firestore.EmptyDocs _) => l10n.emptyDocs);
}
