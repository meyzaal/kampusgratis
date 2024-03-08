import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kampusgratis/shared/shared.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc(AuthenticationRepository authenticationRepository)
      : _authenticationRepository = authenticationRepository,
        super(
          const ChangePasswordState(
            isValid: false,
            status: FormzSubmissionStatus.initial,
            newPassword: PasswordInput.pure(),
            oldPassword: PasswordInput.pure(),
            confirmedPassword: ConfirmedPasswordInput.pure(),
          ),
        ) {
    on<ChangePasswordOldPasswordChanged>(_onChangePasswordOldPasswordChanged);
    on<ChangePasswordNewPasswordChanged>(_onChangePasswordNewPasswordChanged);
    on<ChangePasswordConfirmedPasswordChanged>(
      _onChangePasswordConfirmedPasswordChanged,
    );
    on<ChangePasswordFormSubmitted>(_onChangePasswordFormSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onChangePasswordOldPasswordChanged(
    ChangePasswordOldPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final oldPassword = PasswordInput.dirty(
      patternValidation: false,
      value: event.oldPassword,
    );
    emit(
      state.copyWith(
        oldPassword: oldPassword,
        isValid: Formz.validate([
          oldPassword,
          state.newPassword,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void _onChangePasswordNewPasswordChanged(
    ChangePasswordNewPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final newPassword = PasswordInput.dirty(value: event.newPassword);
    final confirmedPassword = state.confirmedPassword.isPure
        ? state.confirmedPassword
        : ConfirmedPasswordInput.dirty(
            password: newPassword.value,
            value: state.confirmedPassword.value,
          );
    emit(
      state.copyWith(
        newPassword: newPassword,
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
          state.oldPassword,
          newPassword,
          confirmedPassword,
        ]),
      ),
    );
  }

  void _onChangePasswordConfirmedPasswordChanged(
    ChangePasswordConfirmedPasswordChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final confirmedPassword = ConfirmedPasswordInput.dirty(
      password: state.newPassword.value,
      value: event.confirmedPassword,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
          state.oldPassword,
          state.newPassword,
          confirmedPassword,
        ]),
      ),
    );
  }

  Future<void> _onChangePasswordFormSubmitted(
    ChangePasswordFormSubmitted event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.changePassword(
        oldPassword: state.oldPassword.value,
        newPassword: state.newPassword.value,
        confirmPassword: state.confirmedPassword.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on ChangePasswordFailure catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          message: e.message,
        ),
      );
    }
  }
}
