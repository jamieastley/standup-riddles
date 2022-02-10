class Content {
  final int id;
  final String content;
  final String? answer;
  final bool hasBeenAsked;

  const Content({
    required this.id,
    required this.content,
    required this.answer,
    required this.hasBeenAsked,
  });
}
