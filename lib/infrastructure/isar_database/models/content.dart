import 'package:isar/isar.dart';

part 'content.g.dart';

@Collection()
class Content {
  int? id;

  late final String content;

  late final String? answer;

  late final bool hasBeenAsked;

  Future<void> insertContent(Content model) async {}
}
