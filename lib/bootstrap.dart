import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licenta/app/app.dart';
import 'package:licenta/core/core.dart';
import 'package:licenta/feature/auth/auth.dart';
import 'package:licenta/feature/locations/data_source/data_source.dart';
import 'package:licenta/feature/locations/repository/locations_repository.dart';
import 'package:licenta/feature/main/main.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    FirebaseCrashlytics.instance.log('${bloc.runtimeType} - $change');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);

    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({
  required NetworkConstants networkConstants,
}) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      const firebaseOptions = FirebaseOptions(
        apiKey: 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFZ3Ys',
        appId: '1:1037602325706:ios:c53140b1580d52b3a4a033',
        messagingSenderId: '1037602325706',
        projectId: 'easybooking-a83d2',
        storageBucket: 'easybooking-a83d2.appspot.com',
      );
      await Firebase.initializeApp(options: firebaseOptions);

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      Bloc.observer = AppBlocObserver();

      final providers = await _getRepositoryProviders(
        networkConstants: networkConstants,
      );

      final sessionHandler = SessionHandler();

      final authGuard = AuthGuard(
        handler: sessionHandler,
      );

      runApp(
        MultiRepositoryProvider(
          providers: providers,
          child: EasyBookingApp(
            router: AppRouter(authGuard: authGuard),
          ),
        ),
      );
    },
    (error, stackTrace) => FirebaseCrashlytics.instance
        .recordError(error, stackTrace, fatal: true),
  );
}

Future<List<RepositoryProvider<dynamic>>> _getRepositoryProviders({
  required NetworkConstants networkConstants,
}) async {
  final firebaseApp = Firebase.app();
  final database = FirebaseDatabase.instanceFor(
    app: firebaseApp,
    databaseURL: networkConstants.refUrl,
  );

  return [
    RepositoryProvider<AuthRepository>(
      create: (context) => AuthRepository(
        remoteDataSource: AuthRemoteDataSource(database),
      ),
    ),
    RepositoryProvider<MainRepository>(
      create: (context) => MainRepository(
        remoteDataSource: MainRemoteDataSource(database),
      ),
    ),
    RepositoryProvider<LocationsRepository>(
      create: (context) => LocationsRepository(
        remoteDataSource: LocationsRemoteDataSource(database),
      ),
    )
  ];
}
