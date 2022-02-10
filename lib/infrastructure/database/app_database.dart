import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:standup_games/infrastructure/database/dao/content_dao.dart';
import 'package:standup_games/infrastructure/database/dao/name_dao.dart';
import 'package:standup_games/infrastructure/database/tables/content.dart';
import 'package:standup_games/infrastructure/database/tables/names.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Names, Content], daos: [NamesDao, ContentDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async => debugPrint(
            'wasCreated: ${details.wasCreated},\nversionBefore: ${details.versionBefore}\nversionNow: ${details.versionNow}'),
        onCreate: (m) async => await m.createAll(),
        onUpgrade: (m, from, to) async {
          // TODO
        },
      );
}
