import 'package:kg_client/kg_client.dart';

class AuthenticationRepository {
  AuthenticationRepository({KgClient? kgClient})
      : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;
}
