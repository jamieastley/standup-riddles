part of 'picker_selector_bloc.dart';

@freezed
class PickerSelectorEvent with _$PickerSelectorEvent {
  const factory PickerSelectorEvent.tick({required int index, required List<Picker> pickers}) =
      _Tick;
  @protected
  const factory PickerSelectorEvent.updateStream({
    required int index,
    required List<Picker> pickers,
  }) = _UpdateStream;

  const factory PickerSelectorEvent.complete(Picker picker) = _Complete;
}
