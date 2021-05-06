import 'package:flutter/foundation.dart';
import 'package:helper_repository/src/domain/i_app_service.dart';

class AppService implements IAppService {
  @override
  bool getkIsWeb() => kIsWeb;
}
