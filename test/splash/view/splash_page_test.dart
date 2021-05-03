import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterence/splash/bloc/auth_bloc.dart';
import 'package:flutterence/splash/view/splash_page.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class FakeAuthEvent extends Fake implements AuthEvent {}

class FakeAuthState extends Fake implements AuthState {}

void main() {
  group('SplashPage', () {
    MockAuthBloc? _authBloc;
    setUpAll(() {
      registerFallbackValue<AuthEvent>(FakeAuthEvent());
      registerFallbackValue<AuthState>(FakeAuthState());
      _authBloc = MockAuthBloc();
    });
    setUp(() {});

    tearDown(() {
      _authBloc!.close();
    });
    testWidgets(
        'Should render a CircularProgressIndicator when AuthBloc state is Initial',
        (tester) async {
      when(() => _authBloc!.state).thenReturn(Initial());
      await tester.pumpWidget(BlocProvider.value(
          value: _authBloc!,
          child: MaterialApp(
            home: Scaffold(body: const SplashPage()),
          )));
      expect(_authBloc!.state, equals(Initial()));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
