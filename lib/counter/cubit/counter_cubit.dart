import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kg_client/kg_client.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(this.authenticationRepository) : super(0);

  final AuthenticationRepository authenticationRepository;

  Future<void> testingLogin() async {
    try {
      await authenticationRepository.signInWithEmailAndPassword(
        email: 'almayza17@gmail.com',
        password: '1',
      );
      debugPrint('SUCCESS');
    } on SignInWithEmailAndPasswordFailure catch (e) {
      debugPrint(e.message);
    } on ParsingFailedFailure catch (e) {
      debugPrint(e.message);
    } catch (e) {
      
      debugPrint(e.toString());
    }
  }

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
