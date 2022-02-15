part of 'content_bloc.dart';

@immutable
abstract class ContentState {
  const ContentState();
}

class ContentEmpty extends ContentState {}

class ContentLoaded extends ContentState {
  final List<Content> contentList;
  final List<Content> pendingContent;
  final List<Content> askedContent;

  const ContentLoaded({
    required this.contentList,
    required this.pendingContent,
    required this.askedContent,
  });
}

class ContentSelected extends ContentLoaded {
  final Content selectedContent;

  const ContentSelected({
    required this.selectedContent,
    required List<Content> contentList,
    required List<Content> pendingContent,
    required List<Content> askedContent,
  }) : super(
          contentList: contentList,
          askedContent: askedContent,
          pendingContent: pendingContent,
        );
}

class AnswerRevealed extends ContentSelected {
  const AnswerRevealed({
    required Content selectedContent,
    required List<Content> contentList,
    required List<Content> pendingContent,
    required List<Content> askedContent,
  }) : super(
          selectedContent: selectedContent,
          contentList: contentList,
          askedContent: askedContent,
          pendingContent: pendingContent,
        );
}
