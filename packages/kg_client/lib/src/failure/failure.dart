import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// A union class representing various failure scenarios that can occur during 
/// application execution.
///
/// Extends [Exception], making it throwable as an exception.
@freezed
class Failure with _$Failure implements Exception {
  /// Creates an instance of [Failure] with an unknown failure scenario.
  ///
  /// The [message] parameter provides additional information about the failure.
  factory Failure.unknown({
    @Default('Terjadi kesalahan yang tidak diketahui.') String message,
  }) = UnknownFailure;

  /// Creates an instance of [Failure] for a parsing failure scenario.
  ///
  /// The [message] parameter provides additional information about the failure.
  factory Failure.parsingFailed({
    @Default('Gagal memparsing response.') String message,
  }) = ParsingFailedFailure;

  /// Creates an instance of [Failure] for a connection error scenario.
  ///
  /// The [message] parameter provides additional information about the failure.
  factory Failure.connectionError({
    @Default('Terjadi masalah koneksi.') String message,
  }) = ConnectionErrorFailure;

  /// Creates an instance of [Failure] for a connection timeout scenario.
  ///
  /// The [message] parameter provides additional information about the failure.
  factory Failure.connectionTimeout({
    @Default('Waktu koneksi habis.') String message,
  }) = ConnectionTimeoutFailure;

  /// Creates an instance of [Failure] for a bad response scenario.
  ///
  /// The [message] parameter provides additional information about the failure.
  /// The [statusCode] parameter represents the HTTP status code of the bad 
  /// response, if available.
  factory Failure.badResponse({
    @Default('Terjadi kesalahan.') String message,
    int? statusCode,
  }) = BadResponseFailure;
}
