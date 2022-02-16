import 'package:freezed_annotation/freezed_annotation.dart';

part 'picker.freezed.dart';

@freezed
class Picker with _$Picker {
  const factory Picker({
    required int id,
    required String name,
    required bool hasBeenPicked,
  }) = _Picker;
}
