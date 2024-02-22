import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:kg_client/kg_client.dart';
import 'package:user_repository/user_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

enum EditProfileStatus { initial, editing, loading, failure, success, canceled }

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc(UserRepository userRepository)
      : _userRepository = userRepository,
        super(EditProfileState(user: userRepository.currentUser)) {
    on<_EditProfileStarted>(_onEditProfileStarted);
    on<EditProfileNameChanged>(_onEditProfileNameChanged);
    on<EditProfileGenderChanged>(_onEditProfileGenderChanged);
    on<EditProfilePhoneChanged>(_onEditProfilePhoneChanged);
    on<EditProfileFormSubmitted>(_onEditProfileFormSubmitted);
  }

  final UserRepository _userRepository;

  void _onEditProfileStarted(
    _EditProfileStarted event,
    Emitter<EditProfileState> emit,
  ) {
    final user = state.user;
    if (user != null) {
      final name = Name.dirty(user.fullName);
      var gender = state.gender;
      var phone = state.phone;

      if (user.gender != null) gender = GenderInput.dirty(user.gender);
      if (user.phoneNumber != null) phone = Phone.dirty(user.phoneNumber!);

      emit(state.copyWith(name: name, gender: gender, phone: phone));
    }
  }

  void _onEditProfileNameChanged(
    EditProfileNameChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final name = Name.dirty(event.name);
    emit(
      state.copyWith(
        name: name,
        status: state.status.changeToEditingStatus,
        isValid: Formz.validate([name, state.gender, state.phone]),
      ),
    );
  }

  void _onEditProfileGenderChanged(
    EditProfileGenderChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final gender = GenderInput.dirty(event.gender);
    emit(
      state.copyWith(
        gender: gender,
        status: state.status.changeToEditingStatus,
        isValid: Formz.validate([state.name, gender, state.phone]),
      ),
    );
  }

  void _onEditProfilePhoneChanged(
    EditProfilePhoneChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final phone = Phone.dirty(event.phone);
    emit(
      state.copyWith(
        phone: phone,
        status: state.status.changeToEditingStatus,
        isValid: Formz.validate([state.name, state.gender, phone]),
      ),
    );
  }

  Future<void> _onEditProfileFormSubmitted(
    EditProfileFormSubmitted event,
    Emitter<EditProfileState> emit,
  ) async {
    if (!state.isValid) return;
    emit(state.copyWith(status: EditProfileStatus.loading));
    try {
      String? name;
      String? phone;
      Gender? gender;

      if (state.name.isValid && state.name.value != state.user?.fullName) {
        name = state.name.value;
      }
      if (state.phone.isValid && state.phone.value != state.user?.phoneNumber) {
        phone = state.phone.value;
      }
      if (state.gender.isValid && state.gender.value != state.user?.gender) {
        gender = state.gender.value;
      }

      if (name == null && gender == null && phone == null) {
        emit(
          state.copyWith(
            status: EditProfileStatus.canceled,
            message: 'Proses dibatalkan, tidak ada perubahan data.',
          ),
        );
        return;
      }

      final user = await _userRepository.updateUserInfo(
        fullName: name,
        phone: phone,
        gender: gender,
      );
      emit(state.copyWith(user: user, status: EditProfileStatus.success));
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          status: EditProfileStatus.failure,
          message: e.message,
        ),
      );
    }
  }
}

extension EditProfileStatusX on EditProfileStatus {
  bool get isInitial => this == EditProfileStatus.initial;
  bool get isEditing => this == EditProfileStatus.editing;
  bool get isLoading => this == EditProfileStatus.loading;
  bool get isFailure => this == EditProfileStatus.failure;
  bool get isSuccess => this == EditProfileStatus.success;
  bool get isCanceled => this == EditProfileStatus.canceled;
  bool get isFailureOrCanceled =>
      this == EditProfileStatus.failure || this == EditProfileStatus.canceled;

  EditProfileStatus get changeToEditingStatus {
    if (isInitial) return EditProfileStatus.editing;
    return this;
  }
}
