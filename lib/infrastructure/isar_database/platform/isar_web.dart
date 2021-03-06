import 'package:isar/isar.dart';

import 'base_isar.dart';

BaseIsar getIsarPlatform() => const IsarWeb();

class IsarWeb extends BaseIsar {
  const IsarWeb();

  @override
  Future<Isar> init(
    List<CollectionSchema<dynamic>> schemas, {
    bool enableInspector = false,
  }) =>
      Isar.open(schemas: schemas, directory: '');
}
