import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:standup_games/domain/content.dart';
import 'package:standup_games/repository/content_repository.dart';

part 'content_event.dart';
part 'content_state.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  final repository = GetIt.I<ContentRepository>();
  StreamSubscription<List<Content>>? _contentStream;

  ContentBloc() : super(ContentEmpty()) {
    on<_LoadContent>((_, emit) {
      _contentStream?.cancel();
      _contentStream = repository.getContentStream().listen((event) {
        add(_ContentStreamUpdatedEvent(event));
      });
    });

    on<_ContentStreamUpdatedEvent>((event, emit) {
      if (event.contentList.isNotEmpty) {
        final allContent = List<Content>.from(event.contentList);
        final List<Content> pendingContent =
            allContent.where((e) => !e.hasBeenAsked).toList();
        final List<Content> askedContent =
            allContent.where((e) => e.hasBeenAsked).toList();
        emit(ContentLoaded(
          contentList: allContent,
          pendingContent: pendingContent,
          askedContent: askedContent,
        ));
      } else {
        emit(ContentEmpty());
      }
    });

    on<ShowRandomPendingContent>((event, emit) {
      final prevState = state as ContentLoaded;
      final randomIndex = Random().nextInt(prevState.pendingContent.length);
      emit(ContentSelected(
        selectedContent: prevState.pendingContent[randomIndex],
        contentList: List<Content>.from(prevState.contentList),
        pendingContent: List<Content>.from(prevState.pendingContent),
        askedContent: List<Content>.from(prevState.askedContent),
      ));
    });

    on<InsertContent>((event, emit) async {
      return await repository.insertContent(
          content: event.content, answer: event.answer);
    });

    on<ToggleContentAsked>((event, emit) async {
      return repository.updateContentAsked(event.content);
    });

    on<RemoveContent>((event, emit) async {
      return repository.removeContent(event.content);
    });

    add(_LoadContent());
  }

  @override
  Future<void> close() {
    _contentStream?.cancel();
    return super.close();
  }
}
