part of 'content_bloc.dart';

@freezed
class ContentState with _$ContentState {
  const factory ContentState.empty() = ContentStateEmpty;
  const factory ContentState.loaded(List<Content> contentList) = ContentStateLoaded;
  const factory ContentState.selected({
    required Content selectedContent,
    required List<Content> contentList,
  }) = ContentStateSelected;
  const factory ContentState.answerRevealed({
    required Content selectedContent,
    required List<Content> contentList,
  }) = ContentStateAnswerRevealed;
}
