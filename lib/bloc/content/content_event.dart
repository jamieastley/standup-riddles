part of 'content_bloc.dart';

@immutable
abstract class ContentEvent {
  const ContentEvent();
}

class _LoadContent extends ContentEvent {}

class _ContentStreamUpdatedEvent extends ContentEvent {
  final List<Content> contentList;

  const _ContentStreamUpdatedEvent(this.contentList);
}

class InsertContent extends ContentEvent {
  final String content;
  final String? answer;

  const InsertContent({required this.content, this.answer});
}

class ToggleContentAsked extends ContentEvent {
  final Content content;

  const ToggleContentAsked(this.content);
}

class ShowRandomPendingContent extends ContentEvent {}

class RevealAnswer extends ContentEvent {}

class RemoveContent extends ContentEvent {
  final Content content;

  const RemoveContent(this.content);
}
