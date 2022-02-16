// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickerEventTearOff {
  const _$PickerEventTearOff();

  _Tick tick(int index) {
    return _Tick(
      index,
    );
  }

  _Load load() {
    return const _Load();
  }

  _Insert insert(String value) {
    return _Insert(
      value,
    );
  }

  _Remove remove(int id) {
    return _Remove(
      id,
    );
  }

  _Toggle togglePicked(Picker picker) {
    return _Toggle(
      picker,
    );
  }

  _Debounce debounced(Picker pickedName) {
    return _Debounce(
      pickedName,
    );
  }

  _StreamUpdated streamUpdated(List<Picker> pickers) {
    return _StreamUpdated(
      pickers,
    );
  }
}

/// @nodoc
const $PickerEvent = _$PickerEventTearOff();

/// @nodoc
mixin _$PickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerEventCopyWith<$Res> {
  factory $PickerEventCopyWith(
          PickerEvent value, $Res Function(PickerEvent) then) =
      _$PickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickerEventCopyWithImpl<$Res> implements $PickerEventCopyWith<$Res> {
  _$PickerEventCopyWithImpl(this._value, this._then);

  final PickerEvent _value;
  // ignore: unused_field
  final $Res Function(PickerEvent) _then;
}

/// @nodoc
abstract class _$TickCopyWith<$Res> {
  factory _$TickCopyWith(_Tick value, $Res Function(_Tick) then) =
      __$TickCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$TickCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$TickCopyWith<$Res> {
  __$TickCopyWithImpl(_Tick _value, $Res Function(_Tick) _then)
      : super(_value, (v) => _then(v as _Tick));

  @override
  _Tick get _value => super._value as _Tick;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_Tick(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Tick implements _Tick {
  const _$_Tick(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PickerEvent.tick(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tick &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$TickCopyWith<_Tick> get copyWith =>
      __$TickCopyWithImpl<_Tick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return tick(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return tick?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _Tick implements PickerEvent {
  const factory _Tick(int index) = _$_Tick;

  int get index;
  @JsonKey(ignore: true)
  _$TickCopyWith<_Tick> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'PickerEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements PickerEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$InsertCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) then) =
      __$InsertCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$InsertCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(_Insert _value, $Res Function(_Insert) _then)
      : super(_value, (v) => _then(v as _Insert));

  @override
  _Insert get _value => super._value as _Insert;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Insert(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Insert implements _Insert {
  const _$_Insert(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PickerEvent.insert(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Insert &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$InsertCopyWith<_Insert> get copyWith =>
      __$InsertCopyWithImpl<_Insert>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return insert(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return insert?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (insert != null) {
      return insert(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return insert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return insert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class _Insert implements PickerEvent {
  const factory _Insert(String value) = _$_Insert;

  String get value;
  @JsonKey(ignore: true)
  _$InsertCopyWith<_Insert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Remove(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PickerEvent.remove(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Remove &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements PickerEvent {
  const factory _Remove(int id) = _$_Remove;

  int get id;
  @JsonKey(ignore: true)
  _$RemoveCopyWith<_Remove> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleCopyWith<$Res> {
  factory _$ToggleCopyWith(_Toggle value, $Res Function(_Toggle) then) =
      __$ToggleCopyWithImpl<$Res>;
  $Res call({Picker picker});

  $PickerCopyWith<$Res> get picker;
}

/// @nodoc
class __$ToggleCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$ToggleCopyWith<$Res> {
  __$ToggleCopyWithImpl(_Toggle _value, $Res Function(_Toggle) _then)
      : super(_value, (v) => _then(v as _Toggle));

  @override
  _Toggle get _value => super._value as _Toggle;

  @override
  $Res call({
    Object? picker = freezed,
  }) {
    return _then(_Toggle(
      picker == freezed
          ? _value.picker
          : picker // ignore: cast_nullable_to_non_nullable
              as Picker,
    ));
  }

  @override
  $PickerCopyWith<$Res> get picker {
    return $PickerCopyWith<$Res>(_value.picker, (value) {
      return _then(_value.copyWith(picker: value));
    });
  }
}

/// @nodoc

class _$_Toggle implements _Toggle {
  const _$_Toggle(this.picker);

  @override
  final Picker picker;

  @override
  String toString() {
    return 'PickerEvent.togglePicked(picker: $picker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Toggle &&
            const DeepCollectionEquality().equals(other.picker, picker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(picker));

  @JsonKey(ignore: true)
  @override
  _$ToggleCopyWith<_Toggle> get copyWith =>
      __$ToggleCopyWithImpl<_Toggle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return togglePicked(picker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return togglePicked?.call(picker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (togglePicked != null) {
      return togglePicked(picker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return togglePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return togglePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (togglePicked != null) {
      return togglePicked(this);
    }
    return orElse();
  }
}

abstract class _Toggle implements PickerEvent {
  const factory _Toggle(Picker picker) = _$_Toggle;

  Picker get picker;
  @JsonKey(ignore: true)
  _$ToggleCopyWith<_Toggle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DebounceCopyWith<$Res> {
  factory _$DebounceCopyWith(_Debounce value, $Res Function(_Debounce) then) =
      __$DebounceCopyWithImpl<$Res>;
  $Res call({Picker pickedName});

  $PickerCopyWith<$Res> get pickedName;
}

/// @nodoc
class __$DebounceCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$DebounceCopyWith<$Res> {
  __$DebounceCopyWithImpl(_Debounce _value, $Res Function(_Debounce) _then)
      : super(_value, (v) => _then(v as _Debounce));

  @override
  _Debounce get _value => super._value as _Debounce;

  @override
  $Res call({
    Object? pickedName = freezed,
  }) {
    return _then(_Debounce(
      pickedName == freezed
          ? _value.pickedName
          : pickedName // ignore: cast_nullable_to_non_nullable
              as Picker,
    ));
  }

  @override
  $PickerCopyWith<$Res> get pickedName {
    return $PickerCopyWith<$Res>(_value.pickedName, (value) {
      return _then(_value.copyWith(pickedName: value));
    });
  }
}

/// @nodoc

@protected
class _$_Debounce implements _Debounce {
  const _$_Debounce(this.pickedName);

  @override
  final Picker pickedName;

  @override
  String toString() {
    return 'PickerEvent.debounced(pickedName: $pickedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Debounce &&
            const DeepCollectionEquality()
                .equals(other.pickedName, pickedName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pickedName));

  @JsonKey(ignore: true)
  @override
  _$DebounceCopyWith<_Debounce> get copyWith =>
      __$DebounceCopyWithImpl<_Debounce>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return debounced(pickedName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return debounced?.call(pickedName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (debounced != null) {
      return debounced(pickedName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return debounced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return debounced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (debounced != null) {
      return debounced(this);
    }
    return orElse();
  }
}

abstract class _Debounce implements PickerEvent {
  const factory _Debounce(Picker pickedName) = _$_Debounce;

  Picker get pickedName;
  @JsonKey(ignore: true)
  _$DebounceCopyWith<_Debounce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StreamUpdatedCopyWith<$Res> {
  factory _$StreamUpdatedCopyWith(
          _StreamUpdated value, $Res Function(_StreamUpdated) then) =
      __$StreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<Picker> pickers});
}

/// @nodoc
class __$StreamUpdatedCopyWithImpl<$Res> extends _$PickerEventCopyWithImpl<$Res>
    implements _$StreamUpdatedCopyWith<$Res> {
  __$StreamUpdatedCopyWithImpl(
      _StreamUpdated _value, $Res Function(_StreamUpdated) _then)
      : super(_value, (v) => _then(v as _StreamUpdated));

  @override
  _StreamUpdated get _value => super._value as _StreamUpdated;

  @override
  $Res call({
    Object? pickers = freezed,
  }) {
    return _then(_StreamUpdated(
      pickers == freezed
          ? _value.pickers
          : pickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
    ));
  }
}

/// @nodoc

@protected
class _$_StreamUpdated implements _StreamUpdated {
  const _$_StreamUpdated(this.pickers);

  @override
  final List<Picker> pickers;

  @override
  String toString() {
    return 'PickerEvent.streamUpdated(pickers: $pickers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamUpdated &&
            const DeepCollectionEquality().equals(other.pickers, pickers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pickers));

  @JsonKey(ignore: true)
  @override
  _$StreamUpdatedCopyWith<_StreamUpdated> get copyWith =>
      __$StreamUpdatedCopyWithImpl<_StreamUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tick,
    required TResult Function() load,
    required TResult Function(String value) insert,
    required TResult Function(int id) remove,
    required TResult Function(Picker picker) togglePicked,
    required TResult Function(Picker pickedName) debounced,
    required TResult Function(List<Picker> pickers) streamUpdated,
  }) {
    return streamUpdated(pickers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
  }) {
    return streamUpdated?.call(pickers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tick,
    TResult Function()? load,
    TResult Function(String value)? insert,
    TResult Function(int id)? remove,
    TResult Function(Picker picker)? togglePicked,
    TResult Function(Picker pickedName)? debounced,
    TResult Function(List<Picker> pickers)? streamUpdated,
    required TResult orElse(),
  }) {
    if (streamUpdated != null) {
      return streamUpdated(pickers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_Load value) load,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Toggle value) togglePicked,
    required TResult Function(_Debounce value) debounced,
    required TResult Function(_StreamUpdated value) streamUpdated,
  }) {
    return streamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
  }) {
    return streamUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_Load value)? load,
    TResult Function(_Insert value)? insert,
    TResult Function(_Remove value)? remove,
    TResult Function(_Toggle value)? togglePicked,
    TResult Function(_Debounce value)? debounced,
    TResult Function(_StreamUpdated value)? streamUpdated,
    required TResult orElse(),
  }) {
    if (streamUpdated != null) {
      return streamUpdated(this);
    }
    return orElse();
  }
}

abstract class _StreamUpdated implements PickerEvent {
  const factory _StreamUpdated(List<Picker> pickers) = _$_StreamUpdated;

  List<Picker> get pickers;
  @JsonKey(ignore: true)
  _$StreamUpdatedCopyWith<_StreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PickerStateTearOff {
  const _$PickerStateTearOff();

  PickerStateEmpty empty() {
    return const PickerStateEmpty();
  }

  PickerStateLoaded loaded(
      {required List<Picker> pendingPickers,
      required List<Picker> previousPickers}) {
    return PickerStateLoaded(
      pendingPickers: pendingPickers,
      previousPickers: previousPickers,
    );
  }

  PickerStateSelected pickerSelected(
      {required Picker selectedPicker,
      required List<Picker> pendingPickers,
      required List<Picker> previousPickers}) {
    return PickerStateSelected(
      selectedPicker: selectedPicker,
      pendingPickers: pendingPickers,
      previousPickers: previousPickers,
    );
  }
}

/// @nodoc
const $PickerState = _$PickerStateTearOff();

/// @nodoc
mixin _$PickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<Picker> pendingPickers, List<Picker> previousPickers)
        loaded,
    required TResult Function(Picker selectedPicker,
            List<Picker> pendingPickers, List<Picker> previousPickers)
        pickerSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerStateEmpty value) empty,
    required TResult Function(PickerStateLoaded value) loaded,
    required TResult Function(PickerStateSelected value) pickerSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerStateCopyWith<$Res> {
  factory $PickerStateCopyWith(
          PickerState value, $Res Function(PickerState) then) =
      _$PickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickerStateCopyWithImpl<$Res> implements $PickerStateCopyWith<$Res> {
  _$PickerStateCopyWithImpl(this._value, this._then);

  final PickerState _value;
  // ignore: unused_field
  final $Res Function(PickerState) _then;
}

/// @nodoc
abstract class $PickerStateEmptyCopyWith<$Res> {
  factory $PickerStateEmptyCopyWith(
          PickerStateEmpty value, $Res Function(PickerStateEmpty) then) =
      _$PickerStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickerStateEmptyCopyWithImpl<$Res>
    extends _$PickerStateCopyWithImpl<$Res>
    implements $PickerStateEmptyCopyWith<$Res> {
  _$PickerStateEmptyCopyWithImpl(
      PickerStateEmpty _value, $Res Function(PickerStateEmpty) _then)
      : super(_value, (v) => _then(v as PickerStateEmpty));

  @override
  PickerStateEmpty get _value => super._value as PickerStateEmpty;
}

/// @nodoc

class _$PickerStateEmpty implements PickerStateEmpty {
  const _$PickerStateEmpty();

  @override
  String toString() {
    return 'PickerState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickerStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<Picker> pendingPickers, List<Picker> previousPickers)
        loaded,
    required TResult Function(Picker selectedPicker,
            List<Picker> pendingPickers, List<Picker> previousPickers)
        pickerSelected,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerStateEmpty value) empty,
    required TResult Function(PickerStateLoaded value) loaded,
    required TResult Function(PickerStateSelected value) pickerSelected,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PickerStateEmpty implements PickerState {
  const factory PickerStateEmpty() = _$PickerStateEmpty;
}

/// @nodoc
abstract class $PickerStateLoadedCopyWith<$Res> {
  factory $PickerStateLoadedCopyWith(
          PickerStateLoaded value, $Res Function(PickerStateLoaded) then) =
      _$PickerStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Picker> pendingPickers, List<Picker> previousPickers});
}

/// @nodoc
class _$PickerStateLoadedCopyWithImpl<$Res>
    extends _$PickerStateCopyWithImpl<$Res>
    implements $PickerStateLoadedCopyWith<$Res> {
  _$PickerStateLoadedCopyWithImpl(
      PickerStateLoaded _value, $Res Function(PickerStateLoaded) _then)
      : super(_value, (v) => _then(v as PickerStateLoaded));

  @override
  PickerStateLoaded get _value => super._value as PickerStateLoaded;

  @override
  $Res call({
    Object? pendingPickers = freezed,
    Object? previousPickers = freezed,
  }) {
    return _then(PickerStateLoaded(
      pendingPickers: pendingPickers == freezed
          ? _value.pendingPickers
          : pendingPickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
      previousPickers: previousPickers == freezed
          ? _value.previousPickers
          : previousPickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
    ));
  }
}

/// @nodoc

class _$PickerStateLoaded implements PickerStateLoaded {
  const _$PickerStateLoaded(
      {required this.pendingPickers, required this.previousPickers});

  @override
  final List<Picker> pendingPickers;
  @override
  final List<Picker> previousPickers;

  @override
  String toString() {
    return 'PickerState.loaded(pendingPickers: $pendingPickers, previousPickers: $previousPickers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickerStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.pendingPickers, pendingPickers) &&
            const DeepCollectionEquality()
                .equals(other.previousPickers, previousPickers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pendingPickers),
      const DeepCollectionEquality().hash(previousPickers));

  @JsonKey(ignore: true)
  @override
  $PickerStateLoadedCopyWith<PickerStateLoaded> get copyWith =>
      _$PickerStateLoadedCopyWithImpl<PickerStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<Picker> pendingPickers, List<Picker> previousPickers)
        loaded,
    required TResult Function(Picker selectedPicker,
            List<Picker> pendingPickers, List<Picker> previousPickers)
        pickerSelected,
  }) {
    return loaded(pendingPickers, previousPickers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
  }) {
    return loaded?.call(pendingPickers, previousPickers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pendingPickers, previousPickers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerStateEmpty value) empty,
    required TResult Function(PickerStateLoaded value) loaded,
    required TResult Function(PickerStateSelected value) pickerSelected,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PickerStateLoaded implements PickerState {
  const factory PickerStateLoaded(
      {required List<Picker> pendingPickers,
      required List<Picker> previousPickers}) = _$PickerStateLoaded;

  List<Picker> get pendingPickers;
  List<Picker> get previousPickers;
  @JsonKey(ignore: true)
  $PickerStateLoadedCopyWith<PickerStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerStateSelectedCopyWith<$Res> {
  factory $PickerStateSelectedCopyWith(
          PickerStateSelected value, $Res Function(PickerStateSelected) then) =
      _$PickerStateSelectedCopyWithImpl<$Res>;
  $Res call(
      {Picker selectedPicker,
      List<Picker> pendingPickers,
      List<Picker> previousPickers});

  $PickerCopyWith<$Res> get selectedPicker;
}

/// @nodoc
class _$PickerStateSelectedCopyWithImpl<$Res>
    extends _$PickerStateCopyWithImpl<$Res>
    implements $PickerStateSelectedCopyWith<$Res> {
  _$PickerStateSelectedCopyWithImpl(
      PickerStateSelected _value, $Res Function(PickerStateSelected) _then)
      : super(_value, (v) => _then(v as PickerStateSelected));

  @override
  PickerStateSelected get _value => super._value as PickerStateSelected;

  @override
  $Res call({
    Object? selectedPicker = freezed,
    Object? pendingPickers = freezed,
    Object? previousPickers = freezed,
  }) {
    return _then(PickerStateSelected(
      selectedPicker: selectedPicker == freezed
          ? _value.selectedPicker
          : selectedPicker // ignore: cast_nullable_to_non_nullable
              as Picker,
      pendingPickers: pendingPickers == freezed
          ? _value.pendingPickers
          : pendingPickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
      previousPickers: previousPickers == freezed
          ? _value.previousPickers
          : previousPickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
    ));
  }

  @override
  $PickerCopyWith<$Res> get selectedPicker {
    return $PickerCopyWith<$Res>(_value.selectedPicker, (value) {
      return _then(_value.copyWith(selectedPicker: value));
    });
  }
}

/// @nodoc

class _$PickerStateSelected implements PickerStateSelected {
  const _$PickerStateSelected(
      {required this.selectedPicker,
      required this.pendingPickers,
      required this.previousPickers});

  @override
  final Picker selectedPicker;
  @override
  final List<Picker> pendingPickers;
  @override
  final List<Picker> previousPickers;

  @override
  String toString() {
    return 'PickerState.pickerSelected(selectedPicker: $selectedPicker, pendingPickers: $pendingPickers, previousPickers: $previousPickers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickerStateSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedPicker, selectedPicker) &&
            const DeepCollectionEquality()
                .equals(other.pendingPickers, pendingPickers) &&
            const DeepCollectionEquality()
                .equals(other.previousPickers, previousPickers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedPicker),
      const DeepCollectionEquality().hash(pendingPickers),
      const DeepCollectionEquality().hash(previousPickers));

  @JsonKey(ignore: true)
  @override
  $PickerStateSelectedCopyWith<PickerStateSelected> get copyWith =>
      _$PickerStateSelectedCopyWithImpl<PickerStateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<Picker> pendingPickers, List<Picker> previousPickers)
        loaded,
    required TResult Function(Picker selectedPicker,
            List<Picker> pendingPickers, List<Picker> previousPickers)
        pickerSelected,
  }) {
    return pickerSelected(selectedPicker, pendingPickers, previousPickers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
  }) {
    return pickerSelected?.call(
        selectedPicker, pendingPickers, previousPickers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pendingPickers, List<Picker> previousPickers)?
        loaded,
    TResult Function(Picker selectedPicker, List<Picker> pendingPickers,
            List<Picker> previousPickers)?
        pickerSelected,
    required TResult orElse(),
  }) {
    if (pickerSelected != null) {
      return pickerSelected(selectedPicker, pendingPickers, previousPickers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickerStateEmpty value) empty,
    required TResult Function(PickerStateLoaded value) loaded,
    required TResult Function(PickerStateSelected value) pickerSelected,
  }) {
    return pickerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
  }) {
    return pickerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickerStateEmpty value)? empty,
    TResult Function(PickerStateLoaded value)? loaded,
    TResult Function(PickerStateSelected value)? pickerSelected,
    required TResult orElse(),
  }) {
    if (pickerSelected != null) {
      return pickerSelected(this);
    }
    return orElse();
  }
}

abstract class PickerStateSelected implements PickerState {
  const factory PickerStateSelected(
      {required Picker selectedPicker,
      required List<Picker> pendingPickers,
      required List<Picker> previousPickers}) = _$PickerStateSelected;

  Picker get selectedPicker;
  List<Picker> get pendingPickers;
  List<Picker> get previousPickers;
  @JsonKey(ignore: true)
  $PickerStateSelectedCopyWith<PickerStateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
