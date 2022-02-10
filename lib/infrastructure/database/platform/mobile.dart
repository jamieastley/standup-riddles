import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as paths;
import 'package:standup_games/infrastructure/database/app_database.dart';

/// DO NOT import this directly, only import and init via `shared_interface.dart`.
Future<AppDatabase> constructDb({
  String dbName = 'db',
  bool logStatements = false,
}) async {
  if (Platform.isIOS || Platform.isAndroid) {
    final executor = LazyDatabase(() async {
      final dataDir = await paths.getApplicationDocumentsDirectory();
      final dbFile = File(p.join(dataDir.path, '$dbName.sqlite'));
      return NativeDatabase(dbFile, logStatements: logStatements);
    });
    return AppDatabase(executor);
  }
  if (Platform.isMacOS || Platform.isLinux) {
    final file = File('db.sqlite');
    return AppDatabase(NativeDatabase(file, logStatements: logStatements));
  }
  return AppDatabase(NativeDatabase.memory(logStatements: logStatements));
}
