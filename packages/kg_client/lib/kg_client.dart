/// Kampus Gratis Client Library
///
/// A Dart library for interacting with the KG API, providing a client for
/// making HTTP requests, token management, and support for different
/// application flavors.
library kg_client;

export 'src/exception/network_exception.dart';
export 'src/kg_client.dart';
export 'src/models/models.dart'
    show
        AdministrationStatus,
        Gender,
        LeaderboardType,
        ProgressType,
        Role,
        SessionStatus,
        SessionType,
        SubjectType;
