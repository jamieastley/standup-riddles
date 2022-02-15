part of 'picker_bloc.dart';

@immutable
abstract class PickerState {
  const PickerState();
}

class PickerEmpty extends PickerState {}

class PickerReady extends PickerState {
  final List<PickerName> pendingPickers;
  final List<PickerName> pastPickers;
  final List<PickerName> allPickers;

  const PickerReady({
    required this.pendingPickers,
    required this.pastPickers,
    required this.allPickers,
  });
}

class PickerValueSelected extends PickerReady {
  final PickerName pickedValue;

  const PickerValueSelected({
    required this.pickedValue,
    required List<PickerName> pendingPickers,
    required List<PickerName> pastPickers,
    required List<PickerName> allPickers,
  }) : super(
            pendingPickers: pendingPickers,
            pastPickers: pastPickers,
            allPickers: allPickers);
}
