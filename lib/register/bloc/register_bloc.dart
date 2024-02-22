import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kampusgratis/shared/shared.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(AuthenticationRepository authenticationRepository)
      : _authenticationRepository = authenticationRepository,
        super(
          const RegisterState(
            status: FormzSubmissionStatus.initial,
            name: Name.pure(),
            email: Email.pure(),
            // phone: Phone.pure(),
            password: Password.pure(),
            confirmedPassword: ConfirmedPassword.pure(),
            termsAndConditions: TermsAndConditions.pure(),
            isValid: false,
          ),
        ) {
    on<RegisterNameChanged>(_onRegisterNameChanged);
    on<RegisterEmailChanged>(_onRegisterEmailChanged);
    // on<RegisterPhoneChanged>(_onRegisterPhoneChanged);
    on<RegisterPasswordChanged>(_onRegisterPasswordChanged);
    on<RegisterConfirmedPasswordChanged>(_onRegisterConfirmedPasswordChanged);
    on<RegisterTermsAndConditionsChanged>(_onRegisterTermsAndConditionsChanged);
    on<RegisterFormSubmitted>(_onRegisterFormSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onRegisterNameChanged(
    RegisterNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    final name = Name.dirty(event.name);
    emit(
      state.copyWith(
        name: name,
        isValid: Formz.validate([
          name,
          state.email,
          // state.phone,
          state.password,
          state.confirmedPassword,
          state.termsAndConditions,
        ]),
      ),
    );
  }

  void _onRegisterEmailChanged(
    RegisterEmailChanged event,
    Emitter<RegisterState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([
          state.name,
          email,
          // state.phone,
          state.password,
          state.confirmedPassword,
          state.termsAndConditions,
        ]),
      ),
    );
  }

  // void _onRegisterPhoneChanged(
  //   RegisterPhoneChanged event,
  //   Emitter<RegisterState> emit,
  // ) {
  //   final phone = Phone.dirty(event.phone);
  //   final formzValid = Formz.validate([
  //     state.name,
  //     state.email,
  //     phone,
  //     state.password,
  //     state.confirmedPassword,
  //     state.termsAndConditions,
  //   ]);
  //   emit(
  //     state.copyWith(
  //       phone: phone,
  //       isValid: formzValid,
  //     ),
  //   );
  // }

  void _onRegisterPasswordChanged(
    RegisterPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    final password = Password.dirty(value: event.password);
    final confirmedPassword = state.confirmedPassword.isPure
        ? state.confirmedPassword
        : ConfirmedPassword.dirty(
            password: password.value,
            value: state.confirmedPassword.value,
          );
    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
          state.name,
          state.email,
          // state.phone,
          password,
          confirmedPassword,
          state.termsAndConditions,
        ]),
      ),
    );
  }

  void _onRegisterConfirmedPasswordChanged(
    RegisterConfirmedPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: event.confirmedPassword,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
          state.name,
          state.email,
          // state.phone,
          state.password,
          confirmedPassword,
          state.termsAndConditions,
        ]),
      ),
    );
  }

  void _onRegisterTermsAndConditionsChanged(
    RegisterTermsAndConditionsChanged event,
    Emitter<RegisterState> emit,
  ) {
    final termsAndConditions =
        TermsAndConditions.dirty(!(state.termsAndConditions.value ?? false));
    emit(
      state.copyWith(
        termsAndConditions: termsAndConditions,
        isValid: Formz.validate([
          state.name,
          state.email,
          // state.phone,
          state.password,
          state.confirmedPassword,
          termsAndConditions,
        ]),
      ),
    );
  }

  Future<void> _onRegisterFormSubmitted(
    RegisterFormSubmitted event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.signUp(
        name: state.name.value,
        email: state.email.value,
        password: state.password.value,
        confirmPassword: state.confirmedPassword.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on EmailAlreadyRegisteredFailure {
      emit(state.copyWith(status: FormzSubmissionStatus.canceled));
    } on SignUpFailure catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          message: e.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          message: 'Terjadi kesalahan yang tidak diketahui (unknown-error).',
        ),
      );
    }
  }
}
