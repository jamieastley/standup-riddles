import 'package:drift/drift.dart';
import 'package:standup_games/domain/picker_name.dart';
import 'package:standup_games/infrastructure/database/app_database.dart';
import 'package:standup_games/infrastructure/database/tables/names.dart';

part 'name_dao.g.dart';

@DriftAccessor(tables: [Names])
class NamesDao extends DatabaseAccessor<AppDatabase> with _$NamesDaoMixin {
  NamesDao(AppDatabase db) : super(db);

  Stream<List<Name>> getNamesStream() => (select(names).watch());

  Future<void> insertName(String name) async =>
      await into(names).insert(NamesCompanion(name: Value<String>(name)));

  Future<void> toggleHasBeenPicked(PickerName name) async =>
      update(names).replace(
        NamesCompanion(
          id: Value<int>(name.id),
          name: Value<String>(name.name),
          hasBeenPicked: Value<bool>(!name.hasBeenPicked),
        ),
      );

  Future<void> removeName(PickerName name) async {
    await (delete(names)..where((tbl) => tbl.id.equals(name.id))).go();
  }
}
