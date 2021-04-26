import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterence/injections.dart';
import 'package:flutterence/utils/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:push_notification/push_notification.dart';
import 'package:user_repository/user_repository.dart';

@module
abstract class PackagesInjectableModule {
  @lazySingleton
  IAuthFacade get authFacade {
    final _firebaseAuth = FirebaseAuth.instance;
    final _googleSignIn = GoogleSignIn();
    final authFacade = FirebaseAuthFacade(_firebaseAuth, _googleSignIn);
    authFacade(
      callbackUrl:
          environment == Environment.dev ? callbackUrlDev : callbackUrl,
      githubClientId:
          environment == Environment.dev ? githubClientIdDev : githubClientId,
      githubSecret:
          environment == Environment.dev ? githubSecretDev : githubSecret,
    );
    return authFacade;
  }

  @lazySingleton
  PushNotification get pushNotification => PushNotification();

  @lazySingleton
  IUserRepository get userRepository {
    final _firebaseFirestore = FirebaseFirestore.instance;
    final userRepository =
        UserRepository(_firebaseFirestore, authFacade, pushNotification);
    return userRepository;
  }
}
