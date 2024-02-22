import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_parser/http_parser.dart';
import 'package:kg_client/src/exception/network_exception.dart';
import 'package:kg_client/src/local_storage.dart';
import 'package:kg_client/src/models/models.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

/// Box name for storing and retrieving tokens in local storage.
const _tokenBoxName = 'token';

/// Enum representing different flavors of the application.
enum KgFlavor {
  /// Development environment flavor.
  development,

  /// Production environment flavor.
  production,
}

/// A Dart class representing the KgClient, which is responsible for managing
/// HTTP requests to the Kg API. It can be configured with a custom Dio HTTP
/// client and KgFlavor.
class KgClient {
  /// Constructs a KgClient instance.
  ///
  /// Parameters:
  /// - [httpClient]: Optional Dio HTTP client. If not provided, a default
  ///   instance will be created.
  /// - [flavor]: Optional KgFlavor specifying the environment flavor. If not
  ///   provided, the default is KgFlavor.development.
  KgClient({
    Dio? httpClient,
    KgFlavor? flavor,
  }) : _httpClient = (httpClient ?? Dio())
          ..options.baseUrl = (flavor ?? KgFlavor.development).baseUrl
          ..interceptors.add(_fresh)
          ..interceptors.add(
            LogInterceptor(requestBody: true, responseBody: true),
          )
          ..interceptors.add(
            InterceptorsWrapper(
              onRequest: (options, handler) async {
                if (Platform.isAndroid || Platform.isIOS) {
                  options.headers.addAll(await userAgentClientHintsHeader());
                }

                return handler.next(options);
              },
              onError: (error, handler) {
                handler.next(error);
              },
            ),
          ) {
    Hive
      ..registerAdapter<Token>(TokenAdapter())
      ..registerAdapter<Role>(RoleAdapter())
      ..registerAdapter<Gender>(GenderAdapter());
  }

  /// Dio instance for making HTTP requests.
  final Dio _httpClient;

  /// Returns a stream providing updates on the authentication status.
  ///
  /// This Dart getter returns a `Stream` of `AuthenticationStatus` objects,
  /// allowing consumers to listen for changes in the authentication status.
  /// The stream is sourced from the `_fresh` object's `authenticationStatus`
  /// property.
  ///
  /// The `AuthenticationStatus` enum typically represents different states of
  /// authentication, such as authenticated, unauthenticated, or in the process
  /// of authentication.
  Stream<AuthenticationStatus> get status => _fresh.authenticationStatus;

// OTENTIKASI
//
//   █████╗ ██╗   ██╗████████╗██╗  ██╗
//  ██╔══██╗██║   ██║╚══██╔══╝██║  ██║
//  ███████║██║   ██║   ██║   ███████║
//  ██╔══██║██║   ██║   ██║   ██╔══██║
//  ██║  ██║╚██████╔╝   ██║   ██║  ██║
//  ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝
//

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final data = {
        'full_name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      };

      await _httpClient.post<void>('/v1/auth/register', data: data);
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
    String? role,
  }) async {
    try {
      final data = {
        'email': email,
        'password': password,
        if (role != null) 'role': role,
      };
      final response = await _httpClient.post<dynamic>(
        '/v1/auth/login',
        data: data,
      );

      final result = Result<Token>.fromJson(
        response.data as JSON,
        (json) => Token.fromJson(json as JSON? ?? {}),
      );

      final token = result.data;
      if (token == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      await _authenticate(
        accessToken: token.accessToken,
        refreshToken: token.refreshToken,
      );
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> signInWithGoogle(String idToken) async {
    try {
      final data = {'credential': idToken};
      final response = await _httpClient.post<dynamic>(
        '/v1/auth/login/google/callback/android',
        data: data,
      );

      final result = Result<Token>.fromJson(
        response.data as JSON,
        (json) => Token.fromJson(json as JSON? ?? {}),
      );

      final token = result.data;
      if (token == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      await _authenticate(
        accessToken: token.accessToken,
        refreshToken: token.refreshToken,
      );
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> signOut() async {
    try {
      final token = await _fresh.token;
      if (token?.refreshToken == null) return _unauthenticate();
      final data = {'refresh_token': token?.refreshToken};
      await _httpClient.post<void>('/v1/auth/logout', data: data);
      await _unauthenticate();
    } catch (_) {
      await _unauthenticate();
    }
  }

  Future<void> requestOtpEmailVerification(String email) async {
    try {
      final data = {'email': email};

      await _httpClient.post<void>(
        '/v1/email-verification/request',
        data: data,
      );
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> verifyOtpEmailVerification({
    required String otpCode,
    required String email,
  }) async {
    try {
      final data = {'otp': otpCode, 'email': email};

      await _httpClient.post<void>(
        '/v1/email-verification/verify',
        data: data,
      );
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> requestOtpResetPassword(String email) async {
    try {
      final data = {'email': email};

      await _httpClient.post<void>(
        '/v1/reset-password/request',
        data: data,
      );
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<ResetPassword> verifyOtpResetPassword({
    required String otpCode,
    required String email,
  }) async {
    try {
      final data = {'otp': otpCode, 'email': email};
      final response = await _httpClient.post<dynamic>(
        '/v1/reset-password/verify',
        data: data,
      );

      final result = Result<ResetPassword>.fromJson(
        response.data as JSON,
        (json) => ResetPassword.fromJson(json as JSON? ?? {}),
      );

      final resetPassword = result.data;
      if (resetPassword == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return resetPassword;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> resetPassword({
    required String token,
    required String password,
  }) async {
    try {
      final data = {'token': token, 'password': password};

      await _httpClient.post<void>('/v1/auth/reset-password', data: data);
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      final data = {
        'old_password': oldPassword,
        'new_password': newPassword,
        'new_password_confirmation': confirmPassword,
      };

      await _httpClient.put<void>('/v1/auth/change-password', data: data);
    } catch (e) {
      throw _getException(e);
    }
  }

// PENGGUNA
//
//  ██╗   ██╗███████╗███████╗██████╗
//  ██║   ██║██╔════╝██╔════╝██╔══██╗
//  ██║   ██║███████╗█████╗  ██████╔╝
//  ██║   ██║╚════██║██╔══╝  ██╔══██╗
//  ╚██████╔╝███████║███████╗██║  ██║
//   ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝
//

  Future<User> getUser() async {
    try {
      final response = await _httpClient.get<dynamic>('/v1/user/profile/me');

      final result = Result<UserData>.fromJson(
        response.data as JSON,
        (json) => UserData.fromJson(json as JSON? ?? {}),
      );

      final user = result.data?.user;
      if (user == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return user;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<Profile> getProfile() async {
    try {
      final response =
          await _httpClient.get<dynamic>('/v1/user/profile/complete');

      final result = Result<Profile>.fromJson(
        response.data as JSON,
        (json) => Profile.fromJson(json as JSON? ?? {}),
      );

      final profile = result.data;
      if (profile == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return profile;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<User> updateUserInfo({
    String? fullName,
    String? username,
    String? phone,
    String? gender,
  }) async {
    try {
      if (fullName == null && username == null && phone == null) {
        throw RequestPayloadException('Semua field tidak boleh kosong semua.');
      }

      final data = {
        if (fullName != null) 'full_name': fullName,
        if (username != null) 'user_name': username,
        if (phone != null) 'phone_number': phone,
        if (gender != null) 'gender': gender,
      };
      final response = await _httpClient.put<dynamic>(
        '/v1/user/profile/me',
        data: data,
      );
      final result = Result<UserData>.fromJson(
        response.data as JSON,
        (json) => UserData.fromJson(json as JSON? ?? {}),
      );

      final user = result.data?.user;
      if (user == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return user;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<String> updateUserAvatar(File? image) async {
    try {
      MultipartFile? avatarFile;
      if (image != null) {
        if (await image.fileSizeInMB > 2.0) {
          throw RequestPayloadException(
            'Ukuran file tidak boleh lebih dari 2mb',
          );
        }

        avatarFile = await MultipartFile.fromFile(
          image.path,
          filename: basename(image.path),
          contentType: image.mediaType,
        );
      }
      final data = FormData.fromMap({'avatar': avatarFile});
      final response = await _httpClient.put<dynamic>(
        '/v1/user/profile/avatar',
        data: data,
      );

      final result = Result<User>.fromJson(
        response.data as JSON,
        (json) => User.fromJson(json as JSON? ?? {}),
      );

      final avatar = result.data?.avatar;
      if (avatar == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return avatar;
    } catch (e) {
      throw _getException(e);
    }
  }

// SEKILAS ILMU
//
//   █████╗ ██████╗ ████████╗██╗ ██████╗██╗     ███████╗
//  ██╔══██╗██╔══██╗╚══██╔══╝██║██╔════╝██║     ██╔════╝
//  ███████║██████╔╝   ██║   ██║██║     ██║     █████╗
//  ██╔══██║██╔══██╗   ██║   ██║██║     ██║     ██╔══╝
//  ██║  ██║██║  ██║   ██║   ██║╚██████╗███████╗███████╗
//  ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝╚══════╝╚══════╝
//

  Future<ArticleData> getArticles({
    required String type,
    required int page,
    required int limit,
    String? search,
    String? sortBy,
  }) async {
    try {
      final params = {
        'page': page,
        'limit': limit,
        'type': type,
        if (search != null) 'search': search,
        if (sortBy != null) 'sort_by': sortBy,
      };
      final response = await _httpClient.get<dynamic>(
        '/v1/article/filter',
        queryParameters: params,
      );
      final result = Result<ArticleData>.fromJson(
        response.data as JSON,
        (json) => ArticleData.fromJson(json as JSON? ?? {}),
      );

      final articleData = result.data;
      if (articleData == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return articleData;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<Article> getArticleBySlug(String slug) async {
    try {
      final response = await _httpClient.get<dynamic>('/v1/article/$slug');
      final result = Result<Article>.fromJson(
        response.data as JSON,
        (json) => Article.fromJson(json as JSON? ?? {}),
      );

      final article = result.data;
      if (article == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return article;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<ArticleData> getFavoritedArticles({
    int page = 1,
    int limit = 10,
    String? search,
    String? sortBy,
  }) async {
    try {
      final params = {
        'page': page,
        'limit': limit,
        if (search != null) 'search': search,
        if (sortBy != null) 'sort_by': sortBy,
      };
      final response = await _httpClient.get<dynamic>(
        '/v1/article/favorite',
        queryParameters: params,
      );
      final result = Result<ArticleData>.fromJson(
        response.data as JSON,
        (json) => ArticleData.fromJson(json as JSON? ?? {}),
      );

      final articleData = result.data;
      if (articleData == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return articleData;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<List<Article>> getRelatedArticles(String articleId) async {
    try {
      final response =
          await _httpClient.get<dynamic>('/v1/article/related/$articleId');
      final result = Result<List<Article>>.fromJson(
        response.data as JSON,
        (json) {
          final datas = json as List<JSON>? ?? [];
          return datas.map(Article.fromJson).toList();
        },
      );

      return result.data ?? <Article>[];
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> bookmarkArticle(String articleId) async {
    try {
      final data = {'article_id': articleId};

      await _httpClient.post<void>('/v1/article/favorite', data: data);
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> unbookmarkArticle(String articleId) async {
    try {
      await _httpClient.delete<void>('/v1/article/favorite/$articleId');
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<SearchHistoryResult> getArticleSearchHistories({
    int? page,
    int? limit,
  }) async {
    try {
      final params = {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
      };
      final response = await _httpClient.get<dynamic>(
        '//v1/search/histories/articles',
        queryParameters: params,
      );

      final result = SearchHistoryResult.fromJson(response.data as JSON);

      return result;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> deleteArticleSearchHistory(String historySearchId) async {
    try {
      await _httpClient
          .delete<void>('/v1/search/histories/articles/$historySearchId');
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<void> deleteAllArticleSearchHistory() async {
    try {
      await _httpClient.delete<void>('/v1/search/histories/articles/all');
    } catch (e) {
      throw _getException(e);
    }
  }

// ADMINISTRASI
//
//   █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗██╗███████╗████████╗██████╗  █████╗
//  ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗
//  ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║██║███████╗   ██║   ██████╔╝███████║
//  ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║██║╚════██║   ██║   ██╔══██╗██╔══██║
//  ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║██║███████║   ██║   ██║  ██║██║  ██║
//  ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝
//
//  ████████╗██╗ ██████╗ ███╗   ██╗
//  ╚══██╔══╝██║██╔═══██╗████╗  ██║
//     ██║   ██║██║   ██║██╔██╗ ██║
//     ██║   ██║██║   ██║██║╚██╗██║
//     ██║   ██║╚██████╔╝██║ ╚████║
//     ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
//

  Future<Administration> getAdministration() async {
    try {
      final response = await _httpClient.get<dynamic>('/v1/administration');
      final result = Result<Administration>.fromJson(
        response.data as JSON,
        (json) => Administration.fromJson(json as JSON? ?? {}),
      );

      final administration = result.data;
      if (administration == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return administration;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<AdministrationConstants> getAdministrationConstants() async {
    try {
      final response =
          await _httpClient.get<dynamic>('/v1/administration/constants');
      final result = Result<AdministrationConstants>.fromJson(
        response.data as JSON,
        (json) => AdministrationConstants.fromJson(json as JSON? ?? {}),
      );

      final constants = result.data;
      if (constants == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return constants;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<Biodata> submitAdministrationBiodata({
    required String fullName,
    required String gender,
    required String phoneNumber,
    required String birthdate,
    required String birthplace,
    required String address,
    required String lastEducation,
    required String identityNumber,
    required String provinceId,
    required String regencyId,
    required String districtId,
    required String villageId,
    required String postalCode,
    String? university,
    String? major,
    int? semester,
    String? nim,
  }) async {
    try {
      final data = {
        // Required
        'full_name': fullName,
        'gender': gender,
        'phone_number': phoneNumber,
        'birthdate': birthdate,
        'birthplace': birthplace,
        'address': address,
        'last_education': lastEducation,
        'identity_number': identityNumber,
        'province_id': provinceId,
        'regency_id': regencyId,
        'district_id': districtId,
        'village_id': villageId,
        'postal_code': postalCode,
        // Required if conversion SKS
        if (university != null) 'university': university,
        if (major != null) 'major': major,
        if (semester != null) 'semester': semester,
        if (nim != null) 'nim': nim,
      };
      final response = await _httpClient
          .post<dynamic>('/administration/biodata', data: data);
      final result = Result<Biodata>.fromJson(
        response.data as JSON,
        (json) => Biodata.fromJson(json as JSON? ?? {}),
      );

      final biodata = result.data;
      if (biodata == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return biodata;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<Familial> submitAdministrationFamilial({
    required String fatherName,
    required String fatherOccupation,
    required String fatherSalary,
    required String motherName,
    required String motherOccupation,
    required String motherSalary,
    required String selfOccupation,
    required String selfSalary,
    required String liveWith,
    required String tuitionPayer,
  }) async {
    try {
      final data = {
        'father_name': fatherName,
        'father_occupation': fatherOccupation,
        'father_salary': fatherSalary,
        'mother_name': motherName,
        'mother_occupation': motherOccupation,
        'mother_salary': motherSalary,
        'self_occupation': selfOccupation,
        'self_salary': selfSalary,
        'live_with': liveWith,
        'tuition_payer': tuitionPayer,
      };
      final response = await _httpClient
          .post<dynamic>('/administration/biodata', data: data);
      final result = Result<Familial>.fromJson(
        response.data as JSON,
        (json) => Familial.fromJson(json as JSON? ?? {}),
      );

      final familial = result.data;
      if (familial == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return familial;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<Documents> submitAdministrationDocuments({
    required File idCardFile,
    required File photoFile,
    File? familyCardFile,
    File? diplomaCertificateFile,
    File? transcriptFile,
    File? studentCardFile,
    File? letterOfRecommendationFile,
  }) async {
    try {
      final files = [
        idCardFile,
        photoFile,
        if (familyCardFile != null) familyCardFile,
        if (diplomaCertificateFile != null) diplomaCertificateFile,
        if (transcriptFile != null) transcriptFile,
        if (studentCardFile != null) studentCardFile,
        if (letterOfRecommendationFile != null) letterOfRecommendationFile,
      ];
      for (final file in files) {
        if (await file.fileSizeInMB > 2.0) {
          throw RequestPayloadException(
            'Ukuran file tidak boleh lebih dari 2mb',
          );
        }
      }

      final idCard = await MultipartFile.fromFile(
        idCardFile.path,
        filename: basename(idCardFile.path),
        contentType: idCardFile.mediaType,
      );
      final photo = await MultipartFile.fromFile(
        photoFile.path,
        filename: basename(photoFile.path),
        contentType: photoFile.mediaType,
      );
      MultipartFile? familyCard;
      MultipartFile? diplomaCertificate;
      MultipartFile? transcript;
      MultipartFile? studentCard;
      MultipartFile? letterOfRecommendation;

      if (familyCardFile != null) {
        familyCard = await MultipartFile.fromFile(
          familyCardFile.path,
          filename: basename(familyCardFile.path),
          contentType: familyCardFile.mediaType,
        );
      }
      if (diplomaCertificateFile != null) {
        diplomaCertificate = await MultipartFile.fromFile(
          diplomaCertificateFile.path,
          filename: basename(diplomaCertificateFile.path),
          contentType: diplomaCertificateFile.mediaType,
        );
      }
      if (transcriptFile != null) {
        transcript = await MultipartFile.fromFile(
          transcriptFile.path,
          filename: basename(transcriptFile.path),
          contentType: transcriptFile.mediaType,
        );
      }
      if (studentCardFile != null) {
        studentCard = await MultipartFile.fromFile(
          studentCardFile.path,
          filename: basename(studentCardFile.path),
          contentType: studentCardFile.mediaType,
        );
      }
      if (letterOfRecommendationFile != null) {
        letterOfRecommendation = await MultipartFile.fromFile(
          letterOfRecommendationFile.path,
          filename: basename(letterOfRecommendationFile.path),
          contentType: letterOfRecommendationFile.mediaType,
        );
      }

      final data = FormData.fromMap({
        'id_card': idCard,
        'photo': photo,
        if (familyCard != null) 'family_card': familyCard,
        if (diplomaCertificate != null)
          'diploma_certificate': diplomaCertificate,
        if (transcript != null) 'transcript': transcript,
        if (studentCard != null) 'student_card': studentCard,
        if (letterOfRecommendation != null)
          'letter_of_Recommendation': letterOfRecommendation,
      });
      final response =
          await _httpClient.post<dynamic>('/administration/file', data: data);
      final result = Result<Documents>.fromJson(
        response.data as JSON,
        (json) => Documents.fromJson(json as JSON? ?? {}),
      );

      final documents = result.data;
      if (documents == null) {
        throw ParsingFailedException(
          'Gagal mendapatkan data respon (data-null).',
        );
      }
      return documents;
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<List<Province>> getProvincies() async {
    try {
      final response =
          await _httpClient.get<dynamic>('/v1/administrative/provincies');
      final result =
          Result<List<Province>>.fromJson(response.data as JSON, (json) {
        final datas = json as List<JSON>? ?? [];
        return datas.map(Province.fromJson).toList();
      });

      return result.data ?? <Province>[];
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<List<Regency>> getRegencies(String provinceId) async {
    try {
      final params = {'province_id': provinceId};
      final response = await _httpClient.get<dynamic>(
        '/v1/administrative/regencies',
        queryParameters: params,
      );
      final result =
          Result<List<Regency>>.fromJson(response.data as JSON, (json) {
        final datas = json as List<JSON>? ?? [];
        return datas.map(Regency.fromJson).toList();
      });

      return result.data ?? <Regency>[];
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<List<District>> getDistricts(String regencyId) async {
    try {
      final params = {'regency_id': regencyId};
      final response = await _httpClient.get<dynamic>(
        '/v1/administrative/districts',
        queryParameters: params,
      );
      final result =
          Result<List<District>>.fromJson(response.data as JSON, (json) {
        final datas = json as List<JSON>? ?? [];
        return datas.map(District.fromJson).toList();
      });

      return result.data ?? <District>[];
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<List<Village>> getVillages(String districtId) async {
    try {
      final params = {'district_id': districtId};
      final response = await _httpClient.get<dynamic>(
        '/v1/administrative/villages',
        queryParameters: params,
      );
      final result =
          Result<List<Village>>.fromJson(response.data as JSON, (json) {
        final datas = json as List<JSON>? ?? [];
        return datas.map(Village.fromJson).toList();
      });

      return result.data ?? <Village>[];
    } catch (e) {
      throw _getException(e);
    }
  }

// PAPAN SKOR
//
//  ██╗     ███████╗ █████╗ ██████╗ ███████╗██████╗
//  ██║     ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
//  ██║     █████╗  ███████║██║  ██║█████╗  ██████╔╝
//  ██║     ██╔══╝  ██╔══██║██║  ██║██╔══╝  ██╔══██╗
//  ███████╗███████╗██║  ██║██████╔╝███████╗██║  ██║
//  ╚══════╝╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝
//
//  ██████╗  ██████╗  █████╗ ██████╗ ██████╗
//  ██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██╔══██╗
//  ██████╔╝██║   ██║███████║██████╔╝██║  ██║
//  ██╔══██╗██║   ██║██╔══██║██╔══██╗██║  ██║
//  ██████╔╝╚██████╔╝██║  ██║██║  ██║██████╔╝
//  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝
//

  Future<LeaderboardResult> getLeaderboardHighestScore({
    int? page,
    int? limit,
    String? search,
  }) async {
    try {
      final params = {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (search != null) 'search': search,
      };
      final response = await _httpClient.get<dynamic>(
        '/v2/leaderboard/highest',
        queryParameters: params,
      );

      return LeaderboardResult.fromJson(response.data as JSON);
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<LeaderboardResult> getLeaderboardMostActive({
    int? page,
    int? limit,
    String? search,
  }) async {
    try {
      final params = {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (search != null) 'search': search,
      };
      final response = await _httpClient.get<dynamic>(
        '/v2/leaderboard/most-active',
        queryParameters: params,
      );

      return LeaderboardResult.fromJson(response.data as JSON);
    } catch (e) {
      throw _getException(e);
    }
  }

  Future<LeaderboardResult> getLeaderboardFastest({
    int? page,
    int? limit,
    String? search,
  }) async {
    try {
      final params = {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (search != null) 'search': search,
      };
      final response = await _httpClient.get<dynamic>(
        '/v2/leaderboard/fastest',
        queryParameters: params,
      );

      return LeaderboardResult.fromJson(response.data as JSON);
    } catch (e) {
      throw _getException(e);
    }
  }
}

/// Instance of [Fresh] for managing token freshness in the application.
///
/// The [_fresh] instance is configured with a [LocalStorage] for token
/// storage, a refresh token function, a token header function, and a should
/// refresh function. It allows for automatic token refreshing when needed.
final Fresh<Token> _fresh = Fresh<Token>(
  tokenStorage: LocalStorage<Token>(_tokenBoxName),
  refreshToken: (token, httpClient) async {
    debugPrint('refreshing token...');

    final refreshToken = token?.refreshToken;
    if (refreshToken == null) throw RevokeTokenException();

    try {
      final requestBody = {'refresh_token': refreshToken};
      final response = await httpClient.post<JSON>(
        '/api/v1/auth/refresh',
        data: requestBody,
      );

      if (response.data == null) throw RevokeTokenException();

      debugPrint('token refreshed!');
      final result = Token.fromJson(response.data?['data'] as JSON);
      return Token(
        accessToken: result.accessToken,
        refreshToken: result.refreshToken,
      );
    } catch (_) {
      throw RevokeTokenException();
    }
  },
  tokenHeader: (token) {
    return {'authorization': '${token.tokenType} ${token.accessToken}'};
  },
  shouldRefresh: (response) {
    return response?.statusCode == 401;
  },
);

/// Authenticates the user with the provided access and refresh tokens.
///
/// This method sets the access and refresh tokens for the user in the
/// [_fresh] object. If a [refreshToken] is not provided, it can be set to
/// `null`.
///
/// Throws an error if the [_fresh] object is not initialized.
Future<void> _authenticate({
  required String accessToken,
  required String? refreshToken,
}) =>
    _fresh.setToken(
      Token(
        accessToken: accessToken,
        refreshToken: refreshToken,
      ),
    );

/// Unauthenticates the user by setting the access and refresh tokens to null.
///
/// This method effectively logs the user out by removing the stored tokens.
/// Throws an error if the [_fresh] object is not initialized.
Future<void> _unauthenticate() => _fresh.setToken(null);

NetworkException _getException(dynamic e) {
  log(e.toString());
  NetworkException exception;
  if (e is DioException) {
    final statusCode = e.response?.statusCode;
    String? message;
    if (e.response != null) {
      final data = e.response?.data as JSON;
      message = data['message'] as String?;
    }

    switch (e.type) {
      case DioExceptionType.badResponse:
        exception =
            BadResponseException(message ?? 'Permintaan gagal $statusCode.');
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        exception = ConnectionErrorException('Terjadi masalah pada koneksi.');
      case DioExceptionType.badCertificate:
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        exception = UnknownException(
          'Terjadi kesalahan (${e.type.toDashedSnakeCase}).',
        );
    }
  } else if (e is SocketException) {
    exception = ConnectionErrorException(
      'Terjadi masalah pada koneksi (socket-error).',
    );
  } else if (e.toString().contains('is not a subtype of')) {
    exception = ParsingFailedException('Gagal memparsing respon.');
  } else if (e is NetworkException) {
    exception = e;
  } else {
    exception = UnknownException('Terjadi kesalahan yang tidak diketahui.');
  }
  log('EXCEPTION CAUGHT: $exception');
  return exception;
}

extension on File {
  MediaType? get mediaType {
    final mimeType = lookupMimeType(path)?.split('/') ?? [];
    if (mimeType.isEmpty) return null;

    return MediaType(mimeType[0], mimeType[1]);
  }

  Future<double> get fileSizeInMB async => await length() / (1024 * 1024);
}

// extension on Dio {
//   Dio get authorized => this
//     ..interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           final token = await _fresh.token;

//           if (token != null) {
//             options.headers = {'authorization': 'Bearer'};
//           }

//           return handler.next(options);
//         },
//       ),
//     );
// }

extension on DioExceptionType {
  String get toDashedSnakeCase => name.replaceAllMapped(
        RegExp('([A-Z])'),
        (Match match) => '-${match.group(1)!.toLowerCase()}',
      );
}

/// JSON type definition for Map<String, dynamic>.
typedef JSON = Map<String, dynamic>;

/// Extension on [KgFlavor] providing base URLs for different flavors.
extension on KgFlavor {
  /// Gets the base URL for the associated flavor.
  String get baseUrl {
    switch (this) {
      case KgFlavor.production:
        return 'https://api.kampusgratis.id/api';
      case KgFlavor.development:
        return 'https://www.mknows.my.id/lms/api';
    }
  }
}

/// Dart extension providing convenience methods for working with
/// `AuthenticationStatus`.
///
/// This extension, named `AuthenticationStatusX`, adds three boolean getters to
/// the `AuthenticationStatus` enum. These getters allow for easier and more
/// readable conditional checks on the authentication status.
///
/// - `isInitial`: Returns `true` if the authentication status is
///   `AuthenticationStatus.initial`, indicating that the authentication process
///   is in its initial state.
///
/// - `isAuthenticated`: Returns `true` if the authentication status is
///   `AuthenticationStatus.authenticated`, indicating that the user is
///   currently authenticated.
///
/// - `isUnauthenticated`: Returns `true` if the authentication status is
///   `AuthenticationStatus.unauthenticated`, indicating that the user is
///   currently unauthenticated.
///
/// Example:
/// ```dart
/// AuthenticationStatus status = AuthenticationStatus.authenticated;
///
/// if (status.isInitial) {
///   // Handle initial authentication state.
/// } else if (status.isAuthenticated) {
///   // Handle authenticated state.
/// } else if (status.isUnauthenticated) {
///   // Handle unauthenticated state.
/// }
/// ```
extension AuthenticationStatusX on AuthenticationStatus {
  /// Returns `true` if the authentication status is
  /// `AuthenticationStatus.initial`.
  bool get isInitial => this == AuthenticationStatus.initial;

  /// Returns `true` if the authentication status is
  /// `AuthenticationStatus.authenticated`.
  bool get isAuthenticated => this == AuthenticationStatus.authenticated;

  /// Returns `true` if the authentication status is
  /// `AuthenticationStatus.unauthenticated`.
  bool get isUnauthenticated => this == AuthenticationStatus.unauthenticated;
}
