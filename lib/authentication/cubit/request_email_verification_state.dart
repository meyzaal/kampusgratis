part of 'request_email_verification_cubit.dart';

@freezed
class RequestEmailVerificationState with _$RequestEmailVerificationState {
  const factory RequestEmailVerificationState.initial() =
      RequestEmailVerificationInitialState;
  const factory RequestEmailVerificationState.loading() =
      RequestEmailVerificationLoadingState;
  const factory RequestEmailVerificationState.failure(String message) =
      RequestEmailVerificationFailureState;
  const factory RequestEmailVerificationState.success() =
      RequestEmailVerificationSuccessState;
}
