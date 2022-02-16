import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../domain/content.dart';
import '../../extensions/content_extensions.dart';
import '../../repository/content_repository.dart';

export '../../extensions/content_extensions.dart';

part 'content_bloc.freezed.dart';
part 'content_event.dart';
part 'content_state.dart';

class ContentBloc extends Bloc<ContentEvent, ContentState> {
  final repository = GetIt.I<ContentRepository>();
  StreamSubscription<List<Content>>? _contentStream;

  ContentBloc() : super(const ContentState.empty()) {
    on<_Load>((_, emit) {
      _contentStream?.cancel();
      _contentStream = repository.getContentStream().listen((event) {
        add(ContentEvent.streamUpdated(event));
      });
    });

    on<_Reveal>((event, emit) {
      final castState = state;
      if (castState is ContentStateSelected) {
        emit(ContentState.answerRevealed(
          selectedContent: castState.selectedContent,
          contentList: castState.contentList,
        ));
      }
    });

    on<_StreamUpdated>((event, emit) {
      if (event.contentList.isNotEmpty) {
        emit(ContentState.loaded(event.contentList));
      } else {
        emit(const ContentState.empty());
      }
    });

    on<_PickRandom>((event, emit) {
      final prevState = state as ContentStateLoaded;
      final pending = prevState.contentList.filterOnlyPending();
      final randomIndex = Random().nextInt(pending.length);
      emit(ContentState.selected(
        selectedContent: pending[randomIndex],
        contentList: List<Content>.from(prevState.contentList),
      ));
    });

    on<_Insert>((event, emit) async {
      final trimmedContent = event.content.trim();
      final trimmedAnswer = event.answer?.trim();
      return repository.insertContent(content: trimmedContent, answer: trimmedAnswer);
    });

    on<_Toggle>((event, emit) async => repository.updateContentAsked(event.content));

    on<_Remove>((event, emit) async => repository.removeContent(event.id));

    add(const ContentEvent.load());
  }

  @override
  Future<void> close() {
    _contentStream?.cancel();
    return super.close();
  }
}
