part of 'bootcamp_bloc.dart';

@freezed
class BootcampState with _$BootcampState {
  const factory BootcampState({
    required List<BootcampData> datas,
    required BootcampStatus status,
    required bool hasReachMax,
    required bool dialogShown,
    Meta? meta,
    String? message,
  }) = _BootcampState;
}
