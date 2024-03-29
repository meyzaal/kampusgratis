import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';

/// A class representing the author of an article with the author's full name as
/// the primary attribute.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Author` for implementation of equality and immutability.
@freezed
class Author with _$Author {
  /// Constructs an [Author] instance with the specified full name.
  const factory Author({required String fullName}) = _Author;

}
