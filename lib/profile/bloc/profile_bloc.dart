import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

enum ProfileStatus { initial, loading, failure, success }

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required UserRepository userRepository,
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const ProfileState()) {
    on<ProfileFetchRequested>(_onProfileFetchRequested);
    on<ProfileReloadUserRequested>(_onProfileReloadUserRequested);
    on<ProfileLogOutRequested>(_onProfileLogOutRequested);
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  Future<void> _onProfileFetchRequested(
    ProfileFetchRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(fetchStatus: ProfileStatus.loading));
    try {
      final user = await _userRepository.getUser();
      emit(
        state.copyWith(
          fetchStatus: ProfileStatus.success,
          user: user,
        ),
      );
    } catch (e) {
      var errorMessage = 'Terjadi kesalahan (unknown-error).';
      if (e is String) errorMessage = e;
      emit(
        state.copyWith(
          fetchStatus: ProfileStatus.failure,
          message: errorMessage,
        ),
      );
    }
  }

  void _onProfileReloadUserRequested(
    ProfileReloadUserRequested event,
    Emitter<ProfileState> emit,
  ) =>
      emit(state.copyWith(user: _userRepository.currentUser));

  Future<void> _onProfileLogOutRequested(
    ProfileLogOutRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(logOutStatus: ProfileStatus.loading));
    try {
      await _authenticationRepository.signOut();
      emit(state.copyWith(logOutStatus: ProfileStatus.success));
    } catch (_) {
      emit(
        state.copyWith(
          logOutStatus: ProfileStatus.failure,
          message: 'Terjadi kesalahan.',
        ),
      );
    }
  }
}

extension ProfileStatusX on ProfileStatus {
  bool get isInitial => this == ProfileStatus.initial;
  bool get isLoading => this == ProfileStatus.loading;
  bool get isFailure => this == ProfileStatus.failure;
  bool get isSuccess => this == ProfileStatus.success;
}
