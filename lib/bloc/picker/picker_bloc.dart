import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
import 'package:standup_games/domain/picker_name.dart';
import 'package:standup_games/repository/picker_repository.dart';

part 'picker_event.dart';
part 'picker_state.dart';

class PickerBloc extends Bloc<PickerEvent, PickerState> {
  final _debounceStream = BehaviorSubject<int>();
  final _repository = GetIt.I<PickerRepository>();
  StreamSubscription<List<PickerName>>? _pickerStream;

  Duration get debounceTime => const Duration(milliseconds: 800);

  PickerBloc() : super(PickerEmpty()) {
    _debounceStream.debounceTime(debounceTime).listen((event) {
      final currentList = List.from((state as PickerReady).pendingPickers);
      final PickerName result = currentList[event];
      add(_PickerDebouncedEvent(result));
    });

    on<PickerTickEvent>((event, emit) => _debounceStream.add(event.index));

    on<InsertPickerValue>(
        (event, emit) => _repository.insertValue(event.value));

    on<LoadPickerValues>((event, emit) async {
      _pickerStream?.cancel();
      _pickerStream = _repository.getPickerNames().listen((event) {
        add(_PickerStreamUpdated(event));
      });
    });

    on<_PickerStreamUpdated>((event, emit) {
      if (event.pickerList.isNotEmpty) {
        final List<PickerName> pending =
            event.pickerList.where((e) => e.hasBeenPicked == false).toList();
        final List<PickerName> pastPickers =
            event.pickerList.where((e) => e.hasBeenPicked == true).toList();
        emit(PickerReady(
          pastPickers: pastPickers,
          pendingPickers: pending,
          allPickers: event.pickerList,
        ));
      } else {
        emit(PickerEmpty());
      }
    });

    on<RemovePicker>((event, emit) => _repository.removeValue(event.picker));

    on<TogglePicked>(((event, emit) async =>
        await _repository.togglePicked(event.pickerName)));

    on<_PickerDebouncedEvent>(
      (event, emit) {
        debugPrint('${event.pickedName.name} picked');
        emit(
          PickerValueSelected(
            pickedValue: event.pickedName,
            allPickers: [
              ...List.from((state as PickerReady).pastPickers),
              ...List.from((state as PickerReady).pendingPickers),
            ],
            pastPickers: List.from((state as PickerReady).pastPickers),
            pendingPickers: List.from((state as PickerReady).pendingPickers),
          ),
        );
      },
    );

    add(LoadPickerValues());
  }

  @override
  Future<void> close() {
    _pickerStream?.cancel();
    _debounceStream.close();
    return super.close();
  }
}
