// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterence/app/app.dart';

void main() {
  group('App', () {
    testWidgets('get the MaterialApp widget', (tester) async {
      await tester.pumpWidget(App());
      // Verify that a push event happened
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
