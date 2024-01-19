/// Kampus Gratis Client Library
///
/// A Dart library for interacting with the KG API, providing a client for
/// making HTTP requests, token management, and support for different
/// application flavors.
library kg_client;

export 'package:dio/dio.dart'
    show DioException, DioExceptionType, FormData, MultipartFile;
export 'package:hive_flutter/hive_flutter.dart';

export 'src/kg_client.dart';
