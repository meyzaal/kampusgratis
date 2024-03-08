import 'package:banner_repository/banner_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:user_repository/user_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

enum HomeStatus { initial, loading, failure, success }

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required UserRepository userRepository,
    required BannerRepository bannerRepository,
  })  : _userRepository = userRepository,
        _bannerRepository = bannerRepository,
        super(
          HomeState(
            banners: [],
            status: HomeStatus.initial,
            user: userRepository.currentUser,
          ),
        ) {
    on<HomeFetched>(_onHomeFetched);
  }

  Future<void> _onHomeFetched(
    HomeFetched event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final user = await _userRepository.getUser(forceRefresh: true);
      final banners = await _bannerRepository.getBanner();
      emit(
        state.copyWith(
          status: HomeStatus.success,
          user: user,
          banners: banners,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          status: HomeStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: HomeStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  final BannerRepository _bannerRepository;
  final UserRepository _userRepository;
}

extension HomeStatusX on HomeStatus {
  bool get isInitial => this == HomeStatus.initial;
  bool get isLoading => this == HomeStatus.loading;
  bool get isFailure => this == HomeStatus.failure;
  bool get isSuccess => this == HomeStatus.success;
}
