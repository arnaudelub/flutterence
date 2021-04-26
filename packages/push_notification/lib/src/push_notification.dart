import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';

class PushNotification {
  static final PushNotification _instance = PushNotification._();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  bool _initialized = false;

  StreamController<String>? notificationStream;

  factory PushNotification() => _instance;
  PushNotification._();

  Future<String?> get token => _firebaseMessaging.getToken();

  Future<void> init(BuildContext context) async {
    notificationStream = StreamController<String>();
    if (!_initialized) {
      // For iOS request permission first.
      _firebaseMessaging.requestPermission();
      final onResume = FirebaseMessaging.onMessageOpenedApp;
      onResume.listen((RemoteMessage remoteMessage) {
        final String screen = remoteMessage.data['screen'] as String;
        switch (screen) {
          default:
            //TODO;

            break;
        }
      });

      // For testing purposes print the Firebase Messaging token
      _initialized = true;
    }
  }
}
