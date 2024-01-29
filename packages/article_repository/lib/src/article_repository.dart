import 'dart:async';

import 'package:article_repository/src/models/models.dart';
import 'package:kg_client/kg_client.dart';

/// Enumeration representing the types of articles, used for filtering.
enum ArticleType {
  /// Represents the newest articles.
  newest,

  /// Represents the popular articles.
  popular,
}

/// Enumeration representing the sorting options for articles.
enum ArticleSort {
  /// Sorts articles by title.
  title,

  /// Sorts articles by date.
  date,
}

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
    final result = await _kgClient.getArticles(
      type: type.name,
      page: page,
      limit: limit,
      search: search,
      sortBy: sortBy?.name.toUpperCase(),
    );

    final meta = ArticleMeta(
      pageSize: result.pageSize ?? 0,
      totalData: result.totalData ?? 0,
      currentPage: result.currentPage ?? 0,
      maxPage: result.maxPage ?? 0,
    );
    final articles = (result.articles ?? []).map(
      (article) {
        DateTime? createdAt;
        final formattedString = article.createdAt;
        if (formattedString != null) {
          createdAt = DateTime.parse(formattedString).toLocal();
        }

        return Article(
          author: Author(fullName: article.author?.fullName ?? 'unknown'),
          content: article.content ?? '',
          id: article.id ?? '',
          isFavorite: article.isFavorite ?? false,
          slug: article.slug ?? '',
          tags: article.tags ?? <String>[],
          thumbnail: article.thumbnail ?? '',
          title: article.title ?? '',
          views: article.views ?? 0,
          createdAt: createdAt,
        );
      },
    ).toList();

    final isLoadMore = page > 1;
    if (isLoadMore) {
      _articles.addAll(articles);
    } else {
      _articles = articles;
    }
    _articlesController.add(_articles);

    return Data(articles: articles, meta: meta);
  }

  /// Retrieves a single article based on its slug.
  Future<Article> getArticleBySlug(String slug) async {
    final article = await _kgClient.getArticleBySlug(slug);

    DateTime? createdAt;
    final formattedString = article.createdAt;
    if (formattedString != null) {
      createdAt = DateTime.parse(formattedString).toLocal();
    }

    return Article(
      author: Author(fullName: article.author?.fullName ?? 'unknown'),
      content: article.content ?? '',
      id: article.id ?? '',
      isFavorite: article.isFavorite ?? false,
      slug: article.slug ?? '',
      tags: article.tags ?? <String>[],
      thumbnail: article.thumbnail ?? '',
      title: article.title ?? '',
      views: article.views ?? 0,
      createdAt: createdAt,
    );
  }

  /// Retrieves a paginated list of favorited articles based on specified
  /// parameters.
  Future<Data> getFavoritedArticles({
    int page = 1,
    int limit = 10,
    String? search,
    ArticleSort? sortBy,
  }) async {
    final result = await _kgClient.getFavoritedArticles(
      page: page,
      limit: limit,
      search: search,
      sortBy: sortBy?.name.toUpperCase(),
    );

    final meta = ArticleMeta(
      pageSize: result.pageSize ?? 0,
      totalData: result.totalData ?? 0,
      currentPage: result.currentPage ?? 0,
      maxPage: result.maxPage ?? 0,
    );
    final favoritedArticles = (result.articles ?? []).map(
      (favoritedArticle) {
        DateTime? createdAt;
        final formattedString = favoritedArticle.createdAt;
        if (formattedString != null) {
          createdAt = DateTime.parse(formattedString).toLocal();
        }

        return Article(
          author: Author(
            fullName: favoritedArticle.author?.fullName ?? 'unknown',
          ),
          content: favoritedArticle.content ?? '',
          id: favoritedArticle.id ?? '',
          isFavorite: favoritedArticle.isFavorite ?? false,
          slug: favoritedArticle.slug ?? '',
          tags: favoritedArticle.tags ?? <String>[],
          thumbnail: favoritedArticle.thumbnail ?? '',
          title: favoritedArticle.title ?? '',
          views: favoritedArticle.views ?? 0,
          createdAt: createdAt,
        );
      },
    ).toList();

    final isLoadMore = page > 1;
    if (isLoadMore) {
      _favoritedArticles.addAll(favoritedArticles);
    } else {
      _favoritedArticles = favoritedArticles;
    }
    _favoritedArticlesController.add(_favoritedArticles);
    return Data(articles: favoritedArticles, meta: meta);
  }

  /// Retrieves a list of articles related to a specified article.
  Future<List<Article>> getRelatedArticles(String articleId) async {
    final relatedArticles = await _kgClient.getRelatedArticles(articleId);
    return relatedArticles.map(
      (relatedArticle) {
        DateTime? createdAt;
        final formattedString = relatedArticle.createdAt;
        if (formattedString != null) {
          createdAt = DateTime.parse(formattedString).toLocal();
        }

        return Article(
          author: Author(
            fullName: relatedArticle.author?.fullName ?? 'unknown',
          ),
          content: relatedArticle.content ?? '',
          id: relatedArticle.id ?? '',
          isFavorite: relatedArticle.isFavorite ?? false,
          slug: relatedArticle.slug ?? '',
          tags: relatedArticle.tags ?? <String>[],
          thumbnail: relatedArticle.thumbnail ?? '',
          title: relatedArticle.title ?? '',
          views: relatedArticle.views ?? 0,
          createdAt: createdAt,
        );
      },
    ).toList();
  }

  /// Adds an article to the user's list of favorited articles.
  Future<void> bookmarkArticle(String articleId) async {
    await _kgClient.bookmarkArticle(articleId);

    final articleIndex =
        _articles.indexWhere((article) => article.id == articleId);
    final favoritedArticle = _articles[articleIndex].copyWith(isFavorite: true);

    _articles[articleIndex] = favoritedArticle;
    _favoritedArticles.add(favoritedArticle);

    _articlesController.add(_articles);
    _favoritedArticlesController.add(_favoritedArticles);
  }

  /// Removes an article from the user's list of favorited articles.
  Future<void> unbookmarkArticle(String articleId) async {
    await _kgClient.unbookmarkArticle(articleId);

    final articleIndex =
        _articles.indexWhere((article) => article.id == articleId);
    final unfavoritedArticle =
        _articles[articleIndex].copyWith(isFavorite: false);

    _articles[articleIndex] = unfavoritedArticle;
    _favoritedArticles.removeWhere((article) => article.id == articleId);

    _articlesController.add(_articles);
    _favoritedArticlesController.add(_favoritedArticles);
  }

  Future<SearchHistories> getSearchHistories({int? page, int? limit}) async {
    final result = await _kgClient.getArticleSearchHistories(
      page: page,
      limit: limit,
    );

    final meta = HistoryMeta(
      page: result.meta?.page ?? 0,
      pageSize: result.meta?.pageSize ?? 0,
      perPage: result.meta?.perPage ?? 0,
      totalData: result.meta?.totalData ?? 0,
    );
    final histories = (result.data?.articles ?? []).map((history) {
      return History(
        id: history.id ?? '',
        keyword: history.keyword ?? '',
      );
    }).toList();

    return SearchHistories(histories: histories, meta: meta);
  }

  Future<void> deleteSearchHistory({String? historyId}) async {
    if (historyId == null) {
      await _kgClient.deleteAllArticleSearchHistory();
    } else {
      await _kgClient.deleteArticleSearchHistory(historyId);
    }
  }
}
