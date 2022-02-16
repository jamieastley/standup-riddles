import '../domain/content.dart';

extension ContentListExtensions on List<Content> {
  List<Content> filterOnlyPending() => where((e) => !e.hasBeenAsked).toList();
  List<Content> filterOnlyAsked() => where((e) => e.hasBeenAsked).toList();
}
