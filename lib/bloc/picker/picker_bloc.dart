import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../domain/picker.dart';
import '../../extensions/picker_extensions.dart';
import '../../repository/picker_repository.dart';

export '../../extensions/picker_extensions.dart';

part 'picker_bloc.freezed.dart';
part 'picker_event.dart';
part 'picker_state.dart';

class PickerBloc extends Bloc<PickerEvent, PickerState> {
  final _repository = GetIt.I<PickerRepository>();
  StreamSubscription<List<Picker>>? _pickerStream;

  Duration get debounceTime => const Duration(milliseconds: 800);

  PickerBloc() : super(const PickerState.empty()) {
    on<_Insert>((event, emit) {
      if (event.value.trim().isNotEmpty) {
        final values = event.value.split(',').map((e) => e.trim()).toList()
          ..removeWhere((e) => e.trim().isEmpty);
        return _repository.insertAllValues(values);
      }
    });

    on<_Load>((event, emit) async {
      await _pickerStream?.cancel();
      _pickerStream = _repository.getPickerNames().listen((event) {
        add(PickerEvent.streamUpdated(event));
      });
    });

    on<_StreamUpdated>((event, emit) {
      if (event.pickers.isNotEmpty) {
        emit(PickerState.loaded(
          pendingPickers: event.pickers.filterOnlyPending(),
          previousPickers: event.pickers.filterOnlyPreviousPicks(),
        ));
      } else {
        emit(const PickerState.empty());
      }
    });

    on<_Remove>((event, emit) => _repository.removeValue(event.id));

    on<_Toggle>((event, emit) => _repository.togglePicked(event.picker));

    add(const PickerEvent.load());
  }

  @override
  Future<void> close() {
    _pickerStream?.cancel();
    return super.close();
  }
}
