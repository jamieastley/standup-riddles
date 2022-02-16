part of 'content_bloc.dart';

@freezed
class ContentEvent with _$ContentEvent {
  const factory ContentEvent.load() = _Load;
  @protected
  const factory ContentEvent.streamUpdated(List<Content> contentList) = _StreamUpdated;
  const factory ContentEvent.insert({required String content, String? answer}) = _Insert;
  const factory ContentEvent.toggleAsked(Content content) = _Toggle;
  const factory ContentEvent.pickRandom() = _PickRandom;
  const factory ContentEvent.revealAnswer() = _Reveal;
  const factory ContentEvent.remove(int id) = _Remove;
}
