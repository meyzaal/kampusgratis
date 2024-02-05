import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_otp_code_state.dart';
part 'request_otp_code_cubit.freezed.dart';

class RequestOtpCodeCubit extends Cubit<RequestOtpCodeState> {
  RequestOtpCodeCubit({
    required AuthenticationRepository authenticationRepository,
    required String email,
  })  : _authenticationRepository = authenticationRepository,
        _email = email,
        super(const RequestOtpCodeState.initial());

  final AuthenticationRepository _authenticationRepository;
  final String _email;

  Future<void> otpEmailVerificationRequested() async {
    if (state is RequestOtpCodeLoadingState) return;
    emit(const RequestOtpCodeState.loading());
    try {
      await _authenticationRepository.requestOtpEmailVerification(_email);
      emit(const RequestOtpCodeState.success());
    } on EmailAlreadyVerifiedFailure {
      emit(
        const RequestOtpCodeState.failure(
          '''Email sudah terverifikasi, silakan masuk dengan akun yang telah terdaftar.''',
        ),
      );
    } on RequestEmailVerificationFailure catch (e) {
      emit(RequestOtpCodeState.failure(e.message));
    } catch (_) {
      emit(
        const RequestOtpCodeState.failure(
          'Terjadi kesalahan yang tidak diketahui (unknown-error).',
        ),
      );
    }
  }
}
