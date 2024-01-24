import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException implements Exception {
  factory NetworkException.badResponse(String message) = BadResponseException;
  factory NetworkException.connectionError(String message) =
      ConnectionErrorException;
  factory NetworkException.parsingFailed(String message) =
      ParsingFailedException;
  factory NetworkException.requestPayload(String message) =
      RequestPayloadException;
  factory NetworkException.unknown(String message) = UnknownException;
}
