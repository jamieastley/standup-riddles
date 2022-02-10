import 'dart:async';

import 'package:drift/drift.dart';
import 'package:standup_games/domain/content.dart' as domain;
import 'package:standup_games/infrastructure/database/app_database.dart';
import 'package:standup_games/infrastructure/database/tables/content.dart';

part 'content_dao.g.dart';

@DriftAccessor(tables: [Content])
class ContentDao extends DatabaseAccessor<AppDatabase> with _$ContentDaoMixin {
  ContentDao(AppDatabase db) : super(db);

  Stream<List<domain.Content>> getContentStream() =>
      (select(content).watch().transform(StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          final transformedData = data
              .map((e) => domain.Content(
                    id: e.id,
                    content: e.content,
                    answer: e.answer,
                    hasBeenAsked: e.hasBeenAsked,
                  ))
              .toList();
          sink.add(transformedData);
        },
      )));

  Future<void> insertContent(domain.Content model) async {
    await (into(content).insertOnConflictUpdate(
      ContentCompanion(
        id: const Value.absent(),
        content: Value<String>(model.content),
        answer: Value<String?>(model.answer),
        hasBeenAsked: Value<bool>(model.hasBeenAsked),
      ),
    ));
  }

  Future<void> toggleContentAsAsked(domain.Content model) async {
    await (update(content).replace(
      ContentCompanion(
        id: Value<int>(model.id),
        content: Value<String>(model.content),
        answer: Value<String?>(model.answer),
        hasBeenAsked: Value<bool>(!model.hasBeenAsked),
      ),
    ));
  }
}
