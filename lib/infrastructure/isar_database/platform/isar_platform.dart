import 'package:isar/isar.dart';

import 'isar_stub.dart'
    if (dart.library.io) 'isar_io.dart'
    if (dart.library.html) 'isar_web.dart';

abstract class IsarPlatform {
  Future<Isar> init(
    List<CollectionSchema<dynamic>> schemas, {
    bool enableInspector = false,
  });

  factory IsarPlatform() => getIsarPlatform();
}
