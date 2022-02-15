import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:standup_games/infrastructure/isar_database/models/content.dart';
import 'package:standup_games/infrastructure/isar_database/models/picker.dart';
import 'package:standup_games/repository/content_repository.dart';
import 'package:standup_games/repository/picker_repository.dart';

class Injector {
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    GetIt.I.registerSingletonAsync<Isar>(() async {
      return await Isar.open(
        schemas: [
          ContentSchema,
          PickerSchema,
        ],
        directory: '',
      );
    });

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
