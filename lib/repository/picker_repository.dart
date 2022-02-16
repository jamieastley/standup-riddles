import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../domain/picker.dart' as domain;
import '../infrastructure/isar_database/models/picker.dart';

class PickerRepository {
  final _isar = GetIt.I<Isar>();

  PickerRepository();

  Stream<List<domain.Picker>> getPickerNames() =>
      _isar.pickers.where().watch(initialReturn: true).transform(StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          final transformed = data
              .map((e) => domain.Picker(
                    id: e.id!,
                    name: e.name,
                    hasBeenPicked: e.hasBeenPicked,
                  ))
              .toList();

          sink.add(transformed);
        },
      ));

  Future<void> insertValue(String value) async {
    await _isar.writeTxn((isar) async {
      await isar.pickers.put(
        Picker()
          ..name = value
          ..hasBeenPicked = false,
      );
    });
  }

  Future<void> insertAllValues(List<String> values) async {
    await _isar.writeTxn((isar) async {
      for (final value in values) {
        await isar.pickers.put(
          Picker()
            ..name = value
            ..hasBeenPicked = false,
        );
      }
    });
  }

  Future<void> togglePicked(domain.Picker picker) async {
    await _isar.writeTxn((isar) async {
      await isar.pickers.put(
        Picker()
          ..id = picker.id
          ..name = picker.name
          ..hasBeenPicked = !picker.hasBeenPicked,
      );
    });
  }

  Future<void> removeValue(int id) async => _isar.writeTxn((isar) async => isar.pickers.delete(id));
}
