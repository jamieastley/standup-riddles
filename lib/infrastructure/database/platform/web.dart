import 'package:drift/web.dart';
import 'package:flutter/foundation.dart';
import 'package:standup_games/infrastructure/database/app_database.dart';

/// DO NOT import this directly, only import and init via `shared_interface.dart`.
Future<AppDatabase> constructDb({
  String dbName = 'db',
  bool logStatements = false,
}) async {
  debugPrint('Constructing web database');
  return AppDatabase(
    WebDatabase.withStorage(
      await DriftWebStorage.indexedDbIfSupported(dbName),
      logStatements: logStatements,
    ),
  );
}
