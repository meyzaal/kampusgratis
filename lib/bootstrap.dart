import 'dart:async';
import 'dart:developer';

import 'package:administration_repository/administration_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:banner_repository/banner_repository.dart';
import 'package:bootcamp_repository/bootcamp_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kg_client/kg_client.dart';
import 'package:path_provider/path_provider.dart';
import 'package:user_repository/user_repository.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({required KgFlavor flavor}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  await runZonedGuarded(
    () async {
      // Add cross-flavor configuration here
      await Hive.initFlutter();
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      final kgClient = KgClient(flavor: flavor);
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getTemporaryDirectory(),
      );

      final administrationRepository =
          AdministrationRepository(kgClient: kgClient);
      final authenticationRepository =
          AuthenticationRepository(kgClient: kgClient);
      final bannerRepository = BannerRepository(kgClient: kgClient);
      final bootcampRepository = BootcampRepository(kgClient: kgClient);
      final userRepository = UserRepository(kgClient: kgClient);

      final app = App(
        administrationRepository: administrationRepository,
        authenticationRepository: authenticationRepository,
        bootcampRepository: bootcampRepository,
        bannerRepository: bannerRepository,
        userRepository: userRepository,
      );

      WidgetsFlutterBinding.ensureInitialized();
      runApp(app);
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
