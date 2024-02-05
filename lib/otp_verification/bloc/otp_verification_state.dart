part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required int duration,
    @Default(OtpVerificationStatus.initial) OtpVerificationStatus status,
    @Default(OtpVerificationTimer.initial) OtpVerificationTimer timer,
    String? token,
    String? message,
  }) = _OtpVerificationState;
}
