import 'package:standup_games/infrastructure/database/app_database.dart';

/// DO NOT import this directly, only import and init via `shared_interface.dart`.
Future<AppDatabase> constructDb({
  String? dbName,
  bool logStatements = false,
}) {
  throw 'Platform not supported';
}
