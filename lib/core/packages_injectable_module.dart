import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterence/core/env/env.dart';
import 'package:flutterence/injections.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:push_notification/push_notification.dart';
import 'package:user_repository/user_repository.dart';
import 'package:group_repository/group_repository.dart';

@module
abstract class PackagesInjectableModule {
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  IAuthFacade get authFacade {
    final _firebaseAuth = FirebaseAuth.instance;
    final _googleSignIn = GoogleSignIn();
    final authFacade = FirebaseAuthFacade(_firebaseAuth, _googleSignIn);
    authFacade(
      callbackUrl:
          environment == Environment.dev ? Env.callbackurldev : Env.callbackurl,
      githubClientId: environment == Environment.dev
          ? Env.githubclientiddev
          : Env.githubclientid,
      githubSecret: environment == Environment.dev
          ? Env.githubsecretdev
          : Env.githubsecret,
    );
    return authFacade;
  }

  @lazySingleton
  PushNotification get pushNotification => PushNotification();

  @lazySingleton
  IUserRepository get userRepository {
    final userRepository =
        UserRepository(firestore, authFacade, pushNotification);
    return userRepository;
  }

  @lazySingleton
  IGroupRepository get groupRepository {
    final groupRepository = GroupRepository(firestore);
    return groupRepository;
  }
}
