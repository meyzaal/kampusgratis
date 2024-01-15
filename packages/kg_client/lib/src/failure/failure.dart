import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure implements Exception {
  factory Failure.unknown({
    @Default('Terjadi kesalahan yang tidak diketahui.') String message,
  }) = UnknownFailure;
  factory Failure.parsingFailed({
    @Default('Gagal memparsing response.') String message,
  }) = ParsingFailedFailure;
  factory Failure.connectionError({
    @Default('Terjadi masalah koneksi.') String message,
  }) = ConnectionErrorFailure;
  factory Failure.connectionTimeout({
    @Default('Waktu koneksi habis.') String message,
  }) = ConnectionTimeoutFailure;
  factory Failure.badResponse({
    @Default('Terjadi kesalahan.') String? message,
    int? statusCode,
  }) = BadResponseFailure;
}
