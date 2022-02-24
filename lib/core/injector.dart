import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../domain/app_config.dart';
import '../infrastructure/isar_database/models/content.dart';
import '../infrastructure/isar_database/models/picker.dart';
import '../infrastructure/isar_database/platform/isar_platform.dart';
import '../repository/content_repository.dart';
import '../repository/picker_repository.dart';

typedef AppRunner = FutureOr<void> Function();

class Injector {
  Future<void> init(AppRunner appRunner) async {
    WidgetsFlutterBinding.ensureInitialized();
    if (kDebugMode) {
      Fimber.plantTree(DebugTree(useColors: true));
    }
    final config = await AppConfig.init();
    await Sentry.init((options) {
      options.dsn = config.sentryDsn;
    }, appRunner: () async {
      await _initDependencies();
      appRunner();
    });
  }
}

Future<void> _initDependencies() async {
  GetIt.I.registerSingletonAsync<Isar>(() async => IsarPlatform()
      .init([ContentSchema, PickerSchema], enableInspector: true));

  GetIt.I.registerSingletonWithDependencies<ContentRepository>(
    () => ContentRepository(),
    dependsOn: [Isar],
  );

  GetIt.I.registerSingletonWithDependencies<PickerRepository>(
    () => PickerRepository(),
    dependsOn: [Isar],
  );

  await GetIt.I.allReady();
}
