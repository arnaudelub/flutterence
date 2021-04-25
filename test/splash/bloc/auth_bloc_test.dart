import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth_facade/flutter_firebase_auth_facade.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutterence/counter/counter.dart';
import 'package:flutterence/splash/bloc/auth_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

class MockUser extends Mock implements User {}

void main() {
  group('AuthBloc', () {
    MockAuthFacade? _authFacade;
    MockUser? _mockUser;
    setUp(() {
      _authFacade = MockAuthFacade();
      _mockUser = MockUser();
    });

    test('initial state is Initial', () {
      expect(AuthBloc(_authFacade!).state, equals(const AuthState.initial()));
    });

    blocTest(
        'Should return state authenticated when'
        '_facade.getSignedInUser return null',
        build: () {
          when(_authFacade!.getSignedInUser).thenReturn(null);
          return AuthBloc(_authFacade!);
        },
        act: (AuthBloc bloc) => bloc.add(const AuthEvent.authCheckRequested()),
        verify: (_) => verify(() => _authFacade!.getSignedInUser()).called(1),
        expect: () => [const AuthState.unauthenticated()]);

    blocTest(
        'Should return state authenticated when'
        '_facade.getSignedInUser return User',
        build: () {
          when(_authFacade!.getSignedInUser).thenReturn(_mockUser);
          return AuthBloc(_authFacade!);
        },
        act: (AuthBloc bloc) => bloc.add(const AuthEvent.authCheckRequested()),
        verify: (_) => verify(() => _authFacade!.getSignedInUser()).called(1),
        expect: () => [const AuthState.authenticated()]);
  });
}
