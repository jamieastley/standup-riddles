import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/picker.dart';

part 'picker_selector_bloc.freezed.dart';
part 'picker_selector_event.dart';
part 'picker_selector_state.dart';

class PickerSelectorBloc extends Bloc<PickerSelectorEvent, PickerSelectorState> {
  final _debounceStream = BehaviorSubject<PickerSelectorEvent>();

  Duration get debounceTime => const Duration(milliseconds: 800);

  PickerSelectorBloc() : super(const PickerSelectorState.empty()) {
    on<_Complete>((event, emit) => emit(PickerSelectorState.selected(picker: event.picker)));

    _debounceStream.debounceTime(debounceTime).listen((event) {
      event.whenOrNull(
        updateStream: (index, pickers) => add(PickerSelectorEvent.complete(pickers[index])),
      );
    });

    on<_Tick>((event, emit) {
      _debounceStream
          .add(PickerSelectorEvent.updateStream(index: event.index, pickers: event.pickers));
    });
  }

  @override
  Future<void> close() {
    _debounceStream.close();
    return super.close();
  }
}
