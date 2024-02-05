part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.timerStarted() =
      OtpVerificationTimerStarted;
  const factory OtpVerificationEvent.timerTicked(int duration) =
      _OtpVerificationTimerTicked;
  const factory OtpVerificationEvent.otpCodeSubmitted({
    required OtpVerificationType type,
    required String otpCode,
    required String email,
  }) = OtpVerificationOtpCodeSubmitted;
}
