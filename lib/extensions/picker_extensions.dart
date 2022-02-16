import '../domain/picker.dart';

extension PickerListExtensions on List<Picker> {
  List<Picker> filterOnlyPending() => where((e) => !e.hasBeenPicked).toList();
  List<Picker> filterOnlyPreviousPicks() => where((e) => e.hasBeenPicked).toList();
}
