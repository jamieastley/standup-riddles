part of 'picker_selector_bloc.dart';

@freezed
class PickerSelectorState with _$PickerSelectorState {
  const factory PickerSelectorState.empty() = _Empty;
  const factory PickerSelectorState.ready(List<Picker> pickers) = _Ready;
  const factory PickerSelectorState.selected({required Picker picker}) = PickerSelected;
}
