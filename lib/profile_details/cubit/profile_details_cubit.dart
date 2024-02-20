import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:user_repository/user_repository.dart';

part 'profile_details_state.dart';
part 'profile_details_cubit.freezed.dart';

class ProfileDetailsCubit extends Cubit<ProfileDetailsState> {
  ProfileDetailsCubit(UserRepository userRepository)
      : _userRepository = userRepository,
        super(const ProfileDetailsState.initial());

  Future<void> started() async {
    emit(const ProfileDetailsState.loading());
    try {
      final user =
          _userRepository.currentUser ?? await _userRepository.getUser();
      final details = await _userRepository.getProfile();
      emit(ProfileDetailsState.success(user: user, details: details));
    } on NetworkException catch (e) {
      emit(ProfileDetailsState.failure(e.message));
    }
  }

  final UserRepository _userRepository;
}
