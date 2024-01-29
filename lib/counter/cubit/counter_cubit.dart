import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({
    required this.authenticationRepository,
    required this.userRepository,
  }) : super(0);

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;

  Future<void> testingLogin() async {
    try {
      await authenticationRepository.signInWithEmailAndPassword(
        email: 'oozzy0999@gmail.com',
        password: 'lapan8Kali',
      );
      debugPrint('SUCCESS');
      _printStatus();
    } on SignInWithEmailAndPasswordFailure catch (e) {
      debugPrint('SIGNIN FAILURE: ${e.message}');
    } catch (e) {
      debugPrint('UNKNOWN FAILURE: $e');
    }
  }

  void _printStatus() {
    authenticationRepository.status
        .listen((event) => debugPrint('STATUS : $event'));
    userRepository.user.listen((event) {
      debugPrint('USER : $event');
    });
  }

  Future<void> increment() async {
    userRepository.clearUser();
    await authenticationRepository.signOut();
  }

  void decrement() async {
    await userRepository.getUser();
  }
}
