part of 'picker_bloc.dart';

@freezed
class PickerEvent with _$PickerEvent {
  const factory PickerEvent.tick(int index) = _Tick;
  const factory PickerEvent.load() = _Load;
  const factory PickerEvent.insert(String value) = _Insert;
  const factory PickerEvent.remove(int id) = _Remove;
  const factory PickerEvent.togglePicked(Picker picker) = _Toggle;

  @protected
  const factory PickerEvent.debounced(Picker pickedName) = _Debounce;

  @protected
  const factory PickerEvent.streamUpdated(List<Picker> pickers) =
      _StreamUpdated;
}
