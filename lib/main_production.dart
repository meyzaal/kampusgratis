import 'package:authentication_repository/authentication_repository.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/bootstrap.dart';
import 'package:kg_client/kg_client.dart';

void main() {
  bootstrap(
    () async {
      final kgClient = KgClient(flavor: KgFlavor.production);

      return App(
        authenticationRepository: AuthenticationRepository(kgClient: kgClient),
      );
    },
  );
}
