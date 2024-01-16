/// Enumeration representing different roles in the authentication system.
///
/// Roles include 'guest', 'student', 'admin', and 'teacher'.
enum Role {
  /// Represents a guest user with limited privileges.
  guest,

  /// Represents a student user with specific privileges.
  student,

  /// Represents an administrator user with elevated privileges.
  admin,

  /// Represents a teacher user with specific privileges.
  teacher
}

/// Enumeration representing authentication status.
///
/// Status values include 'initial', 'authenticated', and 'unauthenticated'.
enum Status {
  /// Represents the initial state before authentication.
  initial,

  /// Represents a successfully authenticated state.
  authenticated,

  /// Represents an unauthenticated state.
  unauthenticated
}
