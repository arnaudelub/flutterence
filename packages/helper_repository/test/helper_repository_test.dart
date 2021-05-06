import 'package:flutter_test/flutter_test.dart';

import 'package:helper_repository/helper_repository.dart';

void main() {
  IAppService _appService = AppService();
  test('getkIsWeb should return a boolean', () {
    expect(_appService, isInstanceOf<IAppService>());
    expect(_appService.getkIsWeb(), isInstanceOf<bool>());
  });
}
