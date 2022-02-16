import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required int id,
    required String content,
    String? answer,
    required bool hasBeenAsked,
  }) = _Content;
}
