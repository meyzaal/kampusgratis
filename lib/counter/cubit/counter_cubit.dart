import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(this.authenticationRepository) : super(0);

  final AuthenticationRepository authenticationRepository;

  Future<void> testingLogin() async {
    try {
      await authenticationRepository.signInWithEmailAndPassword(
        email: 'student3@gmail.com',
        password: '1',
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
  }

  Future<void> increment() async {
    await authenticationRepository.signOut();
    _printStatus();
  }

  void decrement() => emit(state - 1);
}
