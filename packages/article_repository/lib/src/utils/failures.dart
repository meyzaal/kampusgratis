/// An exception class representing a failure to establish a connection with the
/// article-related services.
class ArticleConnectionFailure implements Exception {
  /// Constructs a [ArticleConnectionFailure] instance with an optional
  /// [message].
  const ArticleConnectionFailure([
    this.message = 'Terjadi masalah koneksi.',
  ]);

  /// The error message associated with the connection failure. Defaults to a
  /// generic message if not provided.
  final String message;
}
