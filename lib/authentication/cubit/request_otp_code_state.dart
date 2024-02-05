part of 'request_otp_code_cubit.dart';

@freezed
class RequestOtpCodeState with _$RequestOtpCodeState {
  const factory RequestOtpCodeState.initial() =
      RequestOtpCodeInitialState;
  const factory RequestOtpCodeState.loading() =
      RequestOtpCodeLoadingState;
  const factory RequestOtpCodeState.failure(String message) =
      RequestOtpCodeFailureState;
  const factory RequestOtpCodeState.success() =
      RequestOtpCodeSuccessState;
}
