import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../infrastructure/isar_database/models/content.dart';
import '../infrastructure/isar_database/models/picker.dart';
import '../infrastructure/isar_database/platform/isar_platform.dart';
import '../repository/content_repository.dart';
import '../repository/picker_repository.dart';

class Injector {
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
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
}
