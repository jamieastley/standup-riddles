import 'package:drift/drift.dart';

class Content extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get content => text()();
  TextColumn? get answer => text().nullable()();
  BoolColumn get hasBeenAsked => boolean().clientDefault(() => false)();
}
