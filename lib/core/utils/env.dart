/// Repository mode used to determine which implementation to use.
///
/// Controls whether to use mock implementations for testing or
/// real implementations for production use.
enum RepositoryMode {
  /// Mock implementation for testing.
  mock,

  /// NACD production implementation.
  portfolio;

  /// Converts a string into the corresponding [RepositoryMode].
  ///
  /// Returns [RepositoryMode.portfolio] if the string doesn't match any mode.
  ///
  /// [variableValue] is the string representation of the repository mode.
  static RepositoryMode getRepositoryMode(String variableValue) {
    final mode = RepositoryMode.values.firstWhere((e) {
      return e.name == variableValue.toLowerCase();
    }, orElse: () => RepositoryMode.portfolio);
    return mode;
  }
}

/// Environment configuration for the application.
///
/// Provides access to all environment variables used throughout the app.
/// Variables are set at build time using `--dart-define`.
final class Env {
  Env._();

  // General configuration
}
