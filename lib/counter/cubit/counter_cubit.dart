import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({
    required this.authenticationRepository,
    required this.userRepository,
  }) : super(0) {
    _subscription = authenticationRepository.status
        .listen((event) => debugPrint('STATUS : $event'));
  }

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;

  late StreamSubscription<AuthenticationStatus> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  Future<void> testingLogin() async {
    try {
      await authenticationRepository.signInWithEmailAndPassword(
        email: 'oozzy0999@gmail.com',
        password: 'lapan8Kali',
      );
      debugPrint('SUCCESS');
    } on SignInWithEmailAndPasswordFailure catch (e) {
      debugPrint('SIGNIN FAILURE: ${e.message}');
    } catch (e) {
      debugPrint('UNKNOWN FAILURE: $e');
    }
  }

  Future<void> increment() async {
    await authenticationRepository.signOut();
  }

  Future<void> decrement() async {
  }
}
