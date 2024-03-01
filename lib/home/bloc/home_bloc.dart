import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(
          HomeState(
            user: userRepository.currentUser,
          ),
        ) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    if (state.user == null) {
      final user =
          _userRepository.currentUser ?? await _userRepository.getUser();
      emit(state.copyWith(user: user));
    }
  }

  final UserRepository _userRepository;
}
