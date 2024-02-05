import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(AuthenticationRepository authenticationRepository)
      : _authenticationRepository = authenticationRepository,
        super(
          const ForgotPasswordState.inputEmail(
            status: FormzSubmissionStatus.initial,
            email: Email.pure(),
            isValid: false,
          ),
        ) {
    on<ForgotPasswordEmailChanged>(_onForgotPasswordEmailChanged);
    on<ForgotPasswordTokenReceived>(_onForgotPasswordTokenReceived);
    on<ForgotPasswordNewPasswordChanged>(_onForgotPasswordNewPasswordChanged);
    on<ForgotPasswordConfirmedPasswordChanged>(
      _onForgotPasswordConfirmedPasswordChanged,
    );
    on<ForgotPasswordInputEmailFormSubmitted>(
      _onForgotPasswordInputEmailFormSubmitted,
    );
    on<ForgotPasswordInputPasswordFormSubmitted>(
      _onForgotPasswordInputPasswordFormSubmitted,
    );
  }

  final AuthenticationRepository _authenticationRepository;

  void _onForgotPasswordEmailChanged(
    ForgotPasswordEmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    if (state.isInputEmail) {
      final currentState = state as ForgotPasswordInputEmailState;
      final email = Email.dirty(event.email);
      emit(
        currentState.copyWith(
          email: email,
          isValid: Formz.validate([email]),
        ),
      );
    }
  }

  void _onForgotPasswordTokenReceived(
    ForgotPasswordTokenReceived event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(
      ForgotPasswordState.inputPassword(
        status: FormzSubmissionStatus.initial,
        newPassword: const Password.pure(),
        confirmedPassword: const ConfirmedPassword.pure(),
        isValid: false,
        token: event.token,
      ),
    );
  }

  void _onForgotPasswordNewPasswordChanged(
    ForgotPasswordNewPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    if (state.isInputPassword) {
      final currentState = state as ForgotPasswordInputPasswordState;
      final newPassword = Password.dirty(value: event.newPassword);
      final confirmedPassword = currentState.confirmedPassword.isPure
          ? currentState.confirmedPassword
          : ConfirmedPassword.dirty(
              password: newPassword.value,
              value: currentState.confirmedPassword.value,
            );
      emit(
        currentState.copyWith(
          newPassword: newPassword,
          confirmedPassword: confirmedPassword,
          isValid: Formz.validate([newPassword, confirmedPassword]),
        ),
      );
    }
  }

  void _onForgotPasswordConfirmedPasswordChanged(
    ForgotPasswordConfirmedPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    if (state.isInputPassword) {
      final currentState = state as ForgotPasswordInputPasswordState;
      final confirmedPassword = ConfirmedPassword.dirty(
        password: currentState.newPassword.value,
        value: event.confirmedPassword,
      );
      emit(
        currentState.copyWith(
          confirmedPassword: confirmedPassword,
          isValid:
              Formz.validate([currentState.newPassword, confirmedPassword]),
        ),
      );
    }
  }

  Future<void> _onForgotPasswordInputEmailFormSubmitted(
    ForgotPasswordInputEmailFormSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    if (state.isInputEmail) {
      final currentState = state as ForgotPasswordInputEmailState;
      emit(currentState.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        await _authenticationRepository
            .requestOtpResetPassword(currentState.email.value);
        emit(currentState.copyWith(status: FormzSubmissionStatus.success));
      } on RequestResetPasswordFailure catch (e) {
        emit(
          currentState.copyWith(
            status: FormzSubmissionStatus.failure,
            message: e.message,
          ),
        );
      } catch (_) {
        emit(
          currentState.copyWith(
            status: FormzSubmissionStatus.failure,
            message: 'Terjadi kesalahan yang tidak diketahui (unknown-error).',
          ),
        );
      }
    }
  }

  Future<void> _onForgotPasswordInputPasswordFormSubmitted(
    ForgotPasswordInputPasswordFormSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    if (state.isInputPassword) {
      final currentState = state as ForgotPasswordInputPasswordState;
      emit(currentState.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        await _authenticationRepository.resetPassword(
          token: currentState.token,
          password: currentState.newPassword.value,
        );
        emit(currentState.copyWith(status: FormzSubmissionStatus.success));
      } on ResetPasswordFailure catch (e) {
        emit(
          currentState.copyWith(
            status: FormzSubmissionStatus.failure,
            message: e.message,
          ),
        );
      } catch (_) {
        emit(
          currentState.copyWith(
            status: FormzSubmissionStatus.failure,
            message: 'Terjadi kesalahan yang tidak diketahui (unknown-error).',
          ),
        );
      }
    }
  }
}

extension ForgotPasswordStateX on ForgotPasswordState {
  bool get isInputEmail => this is ForgotPasswordInputEmailState;
  bool get isInputPassword => this is ForgotPasswordInputPasswordState;
}
