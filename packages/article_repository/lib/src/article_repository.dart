import 'dart:async';

import 'package:article_repository/src/models/models.dart';
import 'package:article_repository/src/utils/utils.dart';
import 'package:kg_client/kg_client.dart';

/// A repository class for managing article-related data and interactions.
///
/// The [ArticleRepository] class communicates with an external service using
/// the provided [KgClient]. It manages lists of articles, favorited articles,
/// and provides streams for observing changes in these lists.
class ArticleRepository {
  /// Creates an instance of [ArticleRepository] with an optional [KgClient].
  ArticleRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  /// The instance of [KgClient] used for communication with external services.
  final KgClient _kgClient;

  /// List of articles retrieved from the external service.
  List<Article> _articles = <Article>[];

  /// List of favorited articles retrieved from the external service.
  List<Article> _favoritedArticles = <Article>[];

  /// Stream controller for broadcasting changes in the list of articles.
  final StreamController<List<Article>> _articlesController =
      StreamController<List<Article>>.broadcast()..add(<Article>[]);

  /// Stream controller for broadcasting changes in the list of favorited
  /// articles.
  final StreamController<List<Article>> _favoritedArticlesController =
      StreamController<List<Article>>.broadcast()..add(<Article>[]);

  /// Stream getter providing asynchronous access to the list of articles.
  Stream<List<Article>> get articles async* {
    yield _articles;
    yield* _articlesController.stream;
  }

  /// Stream getter providing asynchronous access to the list of favorited
  /// articles.
  Stream<List<Article>> get favoritedArticles async* {
    yield _favoritedArticles;
    yield* _favoritedArticlesController.stream;
  }

  /// Retrieves a paginated list of articles based on specified parameters.
  Future<Data> getArticles({
    required ArticleType type,
    int page = 1,
    int limit = 10,
    String? search,
    ArticleSort? sortBy,
  }) async {
    try {
      final params = {
        'page': page,
        'limit': limit,
        'type': type.name,
        if (search != null) 'search': search,
        if (sortBy != null) 'sort_by': sortBy.name.toUpperCase(),
      };
      final response = await _kgClient.authorizedClient.get<dynamic>(
        '/v1/article/filter',
        queryParameters: params,
      );
      final result = Response<Data>.fromJson(
        response.data as JSON,
        (json) => Data.fromJson(json as JSON? ?? {}),
      );

      final isLoadMore = page > 1;
      if (isLoadMore) {
        _articles.addAll(result.data.articles);
      } else {
        _articles = result.data.articles;
      }
      _articlesController.add(_articles);
      return result.data;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const ArticleConnectionFailure();
      }

      rethrow;
    }
  }

  /// Retrieves a single article based on its slug.
  Future<Article> getArticleBySlug(String slug) async {
    try {
      final response =
          await _kgClient.authorizedClient.get<dynamic>('/v1/article/$slug');
      final result = Response<Article>.fromJson(
        response.data as JSON,
        (json) => Article.fromJson(json as JSON? ?? {}),
      );

      return result.data;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const ArticleConnectionFailure();
      }

      rethrow;
    }
  }

  /// Retrieves a paginated list of favorited articles based on specified
  /// parameters.
  Future<Data> getFavoritedArticles({
    int page = 1,
    int limit = 10,
    String? search,
    ArticleSort? sortBy,
  }) async {
    try {
      final params = {
        'page': page,
        'limit': limit,
        if (search != null) 'search': search,
        if (sortBy != null) 'sort_by': sortBy.name.toUpperCase(),
      };
      final response = await _kgClient.client.get<dynamic>(
        '/v1/article/favorite',
        queryParameters: params,
      );
      final result = Response<Data>.fromJson(
        response.data as JSON,
        (json) => Data.fromJson(json as JSON? ?? {}),
      );

      final isLoadMore = page > 1;
      if (isLoadMore) {
        _favoritedArticles.addAll(result.data.articles);
      } else {
        _favoritedArticles = result.data.articles;
      }
      _favoritedArticlesController.add(_favoritedArticles);
      return result.data;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const ArticleConnectionFailure();
      }

      rethrow;
    }
  }

  /// Retrieves a list of articles related to a specified article.
  Future<List<Article>> getRelatedArticle(String articleId) async {
    try {
      final response = await _kgClient.authorizedClient
          .get<dynamic>('/v1/article/related/$articleId');
      final result = Response<List<Article>>.fromJson(
        response.data as JSON,
        (json) => List<Article>.from(
          (json as List<JSON>? ?? <JSON>[]).map(Article.fromJson),
        ).toList(),
      );
      return result.data;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const ArticleConnectionFailure();
      }

      rethrow;
    }
  }

  /// Adds an article to the user's list of favorited articles.
  Future<void> bookmarkArticle(String articleId) async {
    try {
      final data = {'article_id': articleId};
      await _kgClient.authorizedClient
          .post<void>('/v1/article/favorite', data: data);

      final articleIndex =
          _articles.indexWhere((article) => article.id == articleId);
      final favoritedArticle =
          _articles[articleIndex].copyWith(isFavorite: true);

      _articles[articleIndex] = favoritedArticle;
      _favoritedArticles.add(favoritedArticle);

      _articlesController.add(_articles);
      _favoritedArticlesController.add(_favoritedArticles);
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const ArticleConnectionFailure();
      }

      rethrow;
    }
  }

  /// Removes an article from the user's list of favorited articles.
  Future<void> unbookmarkArticle(String articleId) async {
    try {
      await _kgClient.authorizedClient
          .delete<void>('/v1/article/favorite/$articleId');

      final articleIndex =
          _articles.indexWhere((article) => article.id == articleId);
      final unfavoritedArticle =
          _articles[articleIndex].copyWith(isFavorite: false);

      _articles[articleIndex] = unfavoritedArticle;
      _favoritedArticles.removeWhere((article) => article.id == articleId);

      _articlesController.add(_articles);
      _favoritedArticlesController.add(_favoritedArticles);
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const ArticleConnectionFailure();
      }

      rethrow;
    }
  }
}

/// Checks if a [DioExceptionType] corresponds to a connection-related error.
bool _isConnectionError(DioExceptionType type) =>
    type == DioExceptionType.connectionError ||
    type == DioExceptionType.connectionTimeout ||
    type == DioExceptionType.receiveTimeout ||
    type == DioExceptionType.sendTimeout;
