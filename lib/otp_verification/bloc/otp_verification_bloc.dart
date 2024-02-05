import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';

part 'otp_verification_event.dart';
part 'otp_verification_state.dart';
part 'otp_verification_bloc.freezed.dart';

enum OtpVerificationStatus { initial, loading, failure, success }

enum OtpVerificationTimer { initial, running, complete }

class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  OtpVerificationBloc({
    required Ticker ticker,
    required AuthenticationRepository authenticationRepository,
  })  : _ticker = ticker,
        _authenticationRepository = authenticationRepository,
        super(OtpVerificationState(duration: _duration)) {
    on<OtpVerificationTimerStarted>(_onOtpVerificationTimerStarted);
    on<OtpVerificationOtpCodeSubmitted>(_onOtpVerificationOtpCodeSubmitted);
    on<_OtpVerificationTimerTicked>(_onTimerTicked);
  }

  final Ticker _ticker;
  final AuthenticationRepository _authenticationRepository;
  static final int _duration = const Duration(minutes: 3).inSeconds;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onOtpVerificationTimerStarted(
    OtpVerificationTimerStarted event,
    Emitter<OtpVerificationState> emit,
  ) {
    emit(state.copyWith(status: OtpVerificationStatus.initial));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: _duration)
        .listen((duration) => add(OtpVerificationEvent.timerTicked(duration)));
  }

  Future<void> _onOtpVerificationOtpCodeSubmitted(
    OtpVerificationOtpCodeSubmitted event,
    Emitter<OtpVerificationState> emit,
  ) async {
    emit(state.copyWith(status: OtpVerificationStatus.loading));
    switch (event.type) {
      case OtpVerificationType.emailVerification:
        try {
          await _authenticationRepository.verifyOtpEmailVerification(
            otpCode: event.otpCode,
            email: event.email,
          );
          emit(state.copyWith(status: OtpVerificationStatus.success));
        } on VerifyOtpEmailVerificationFailure catch (e) {
          emit(
            state.copyWith(
              status: OtpVerificationStatus.failure,
              message: e.message,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              status: OtpVerificationStatus.failure,
              message:
                  'Terjadi kesalahan yang tidak diketahui (unknown-error).',
            ),
          );
        }
      case OtpVerificationType.resetPassword:
        try {
          final token = await _authenticationRepository.verifyOtpResetPassword(
            otpCode: event.otpCode,
            email: event.email,
          );
          emit(
            state.copyWith(
              status: OtpVerificationStatus.success,
              token: token,
            ),
          );
        } on VerifyOtpResetPasswordFailure catch (e) {
          emit(
            state.copyWith(
              status: OtpVerificationStatus.failure,
              message: e.message,
            ),
          );
        } catch (e) {
          emit(
            state.copyWith(
              status: OtpVerificationStatus.failure,
              message:
                  'Terjadi kesalahan yang tidak diketahui (unknown-error).',
            ),
          );
        }
    }
  }

  void _onTimerTicked(
    _OtpVerificationTimerTicked event,
    Emitter<OtpVerificationState> emit,
  ) {
    emit(
      state.copyWith(
        duration: event.duration,
        timer: event.duration > 0
            ? OtpVerificationTimer.running
            : OtpVerificationTimer.complete,
      ),
    );
  }
}

extension OtpVerificationStatusX on OtpVerificationStatus {
  bool get isInitial => this == OtpVerificationStatus.initial;
  bool get isLoading => this == OtpVerificationStatus.loading;
  bool get isFailure => this == OtpVerificationStatus.failure;
  bool get isSuccess => this == OtpVerificationStatus.success;
}

extension OtpVerificationTimerX on OtpVerificationTimer {
  bool get isInitial => this == OtpVerificationTimer.initial;
  bool get isRunning => this == OtpVerificationTimer.running;
  bool get isComplete => this == OtpVerificationTimer.complete;
}
