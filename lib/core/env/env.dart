import 'package:envify/envify.dart';

part 'env.g.dart';

@Envify(path: '.env')
abstract class Env {
  static const String callbackurl = _Env.callbackurl;
  static const String callbackurldev = _Env.callbackurldev;
  static const String githubsecret = _Env.githubsecret;
  static const String githubsecretdev = _Env.githubsecretdev;
  static const String githubclientid = _Env.githubclientid;
  static const String githubclientiddev = _Env.githubclientiddev;
}
