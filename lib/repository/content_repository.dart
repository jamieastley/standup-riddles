import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import '../domain/content.dart' as domain;
import '../infrastructure/isar_database/models/content.dart';

class ContentRepository {
  final _isar = GetIt.I<Isar>();

  ContentRepository();

  Stream<List<domain.Content>> getContentStream() =>
      _isar.contents.where().watch(initialReturn: true).transform(StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          final transformed = data
              .map((e) => domain.Content(
                    id: e.id!,
                    content: e.content,
                    answer: e.answer,
                    hasBeenAsked: e.hasBeenAsked,
                  ))
              .toList();
          sink.add(transformed);
        },
      ));

  Future<void> insertContent({required String content, String? answer}) async {
    await _isar.writeTxn((isar) async => {
          await isar.contents.put(
            Content()
              ..content = content
              ..answer = answer
              ..hasBeenAsked = false,
          )
        });
  }

  Future<void> updateContentAsked(domain.Content content) async => _isar.writeTxn(
        (isar) async => isar.contents.put(
          Content()
            ..id = content.id
            ..content = content.content
            ..answer = content.answer
            ..hasBeenAsked = !content.hasBeenAsked,
        ),
      );

  Future<void> removeContent(int id) async =>
      _isar.writeTxn((isar) async => isar.contents.delete(id));
}
