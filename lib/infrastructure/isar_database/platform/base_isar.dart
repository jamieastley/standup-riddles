import 'package:isar/isar.dart';

import 'isar_platform.dart';

abstract class BaseIsar implements IsarPlatform {
  const BaseIsar();

  @override
  Future<Isar> init(
    List<CollectionSchema<dynamic>> schemas, {
    bool enableInspector = false,
  });
}
