import 'package:drift/drift.dart';

class Names extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BoolColumn get hasBeenPicked => boolean().clientDefault(() => false)();
}
