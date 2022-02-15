import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:standup_games/domain/picker_name.dart';
import 'package:standup_games/infrastructure/isar_database/models/picker.dart';

class PickerRepository {
  final _isar = GetIt.I<Isar>();

  PickerRepository();

  Stream<List<PickerName>> getPickerNames() {
    return _isar.pickers
        .where()
        .watch(initialReturn: true)
        .transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        final transformed = data
            .map((e) => PickerName(
                  id: e.id!,
                  name: e.name,
                  hasBeenPicked: e.hasBeenPicked,
                ))
            .toList();

        sink.add(transformed);
      },
    ));
  }

  Future<void> insertValue(String value) async {
    await _isar.writeTxn((isar) async {
      await isar.pickers.put(
        Picker()
          ..name = value
          ..hasBeenPicked = false,
      );
    });
  }

  Future<void> togglePicked(PickerName picker) async {
    await _isar.writeTxn((isar) async {
      await isar.pickers.put(
        Picker()
          ..id = picker.id
          ..name = picker.name
          ..hasBeenPicked = !picker.hasBeenPicked,
      );
    });
  }

  void removeValue(PickerName picker) async => await _isar
      .writeTxn((isar) async => await isar.pickers.delete(picker.id));
}
