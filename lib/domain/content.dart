import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required int id,
    required String content,
    required bool hasBeenAsked,
    String? answer,
  }) = _Content;
}
