part of 'picker_bloc.dart';

@immutable
abstract class PickerEvent {
  const PickerEvent();
}

class PickerTickEvent extends PickerEvent {
  final int index;

  const PickerTickEvent(this.index);
}

class _PickerDebouncedEvent extends PickerEvent {
  final PickerName pickedName;

  const _PickerDebouncedEvent(this.pickedName);
}

class _PickerStreamUpdated extends PickerEvent {
  final List<PickerName> pickerList;

  const _PickerStreamUpdated(this.pickerList);
}

class LoadPickerValues extends PickerEvent {}

class InsertPickerValue extends PickerEvent {
  final String value;

  const InsertPickerValue(this.value);
}

class RemovePicker extends PickerEvent {
  final PickerName picker;

  const RemovePicker(this.picker);
}

class TogglePicked extends PickerEvent {
  final PickerName pickerName;
  const TogglePicked(this.pickerName);
}
