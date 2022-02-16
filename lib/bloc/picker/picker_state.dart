part of 'picker_bloc.dart';

@freezed
class PickerState with _$PickerState {
  const factory PickerState.empty() = PickerStateEmpty;
  const factory PickerState.loaded({
    required List<Picker> pendingPickers,
    required List<Picker> previousPickers,
  }) = PickerStateLoaded;
  const factory PickerState.pickerSelected({
    required Picker selectedPicker,
    required List<Picker> pendingPickers,
    required List<Picker> previousPickers,
  }) = PickerStateSelected;
}
