part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Banner> banners,
    required HomeStatus status,
    String? message,
    User? user,
  }) = _HomeState;
}
