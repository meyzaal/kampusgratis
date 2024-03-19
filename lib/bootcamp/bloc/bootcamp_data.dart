part of 'bootcamp_bloc.dart';

@freezed
class BootcampData with _$BootcampData {
  const factory BootcampData({
    required Bootcamp data,
    required BootcampStatus status,
    String? message,
  }) = _BootcampData;
}
