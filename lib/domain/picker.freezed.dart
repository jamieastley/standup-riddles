// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'picker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickerTearOff {
  const _$PickerTearOff();

  _Picker call(
      {required int id, required String name, required bool hasBeenPicked}) {
    return _Picker(
      id: id,
      name: name,
      hasBeenPicked: hasBeenPicked,
    );
  }
}

/// @nodoc
const $Picker = _$PickerTearOff();

/// @nodoc
mixin _$Picker {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get hasBeenPicked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickerCopyWith<Picker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerCopyWith<$Res> {
  factory $PickerCopyWith(Picker value, $Res Function(Picker) then) =
      _$PickerCopyWithImpl<$Res>;
  $Res call({int id, String name, bool hasBeenPicked});
}

/// @nodoc
class _$PickerCopyWithImpl<$Res> implements $PickerCopyWith<$Res> {
  _$PickerCopyWithImpl(this._value, this._then);

  final Picker _value;
  // ignore: unused_field
  final $Res Function(Picker) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hasBeenPicked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasBeenPicked: hasBeenPicked == freezed
          ? _value.hasBeenPicked
          : hasBeenPicked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PickerCopyWith<$Res> implements $PickerCopyWith<$Res> {
  factory _$PickerCopyWith(_Picker value, $Res Function(_Picker) then) =
      __$PickerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, bool hasBeenPicked});
}

/// @nodoc
class __$PickerCopyWithImpl<$Res> extends _$PickerCopyWithImpl<$Res>
    implements _$PickerCopyWith<$Res> {
  __$PickerCopyWithImpl(_Picker _value, $Res Function(_Picker) _then)
      : super(_value, (v) => _then(v as _Picker));

  @override
  _Picker get _value => super._value as _Picker;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hasBeenPicked = freezed,
  }) {
    return _then(_Picker(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasBeenPicked: hasBeenPicked == freezed
          ? _value.hasBeenPicked
          : hasBeenPicked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Picker implements _Picker {
  const _$_Picker(
      {required this.id, required this.name, required this.hasBeenPicked});

  @override
  final int id;
  @override
  final String name;
  @override
  final bool hasBeenPicked;

  @override
  String toString() {
    return 'Picker(id: $id, name: $name, hasBeenPicked: $hasBeenPicked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Picker &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.hasBeenPicked, hasBeenPicked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hasBeenPicked));

  @JsonKey(ignore: true)
  @override
  _$PickerCopyWith<_Picker> get copyWith =>
      __$PickerCopyWithImpl<_Picker>(this, _$identity);
}

abstract class _Picker implements Picker {
  const factory _Picker(
      {required int id,
      required String name,
      required bool hasBeenPicked}) = _$_Picker;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get hasBeenPicked;
  @override
  @JsonKey(ignore: true)
  _$PickerCopyWith<_Picker> get copyWith => throw _privateConstructorUsedError;
}
