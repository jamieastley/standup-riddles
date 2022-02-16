// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'picker_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickerSelectorEventTearOff {
  const _$PickerSelectorEventTearOff();

  _Tick tick({required int index, required List<Picker> pickers}) {
    return _Tick(
      index: index,
      pickers: pickers,
    );
  }

  _UpdateStream updateStream(
      {required int index, required List<Picker> pickers}) {
    return _UpdateStream(
      index: index,
      pickers: pickers,
    );
  }

  _Complete complete(Picker picker) {
    return _Complete(
      picker,
    );
  }
}

/// @nodoc
const $PickerSelectorEvent = _$PickerSelectorEventTearOff();

/// @nodoc
mixin _$PickerSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<Picker> pickers) tick,
    required TResult Function(int index, List<Picker> pickers) updateStream,
    required TResult Function(Picker picker) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_UpdateStream value) updateStream,
    required TResult Function(_Complete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerSelectorEventCopyWith<$Res> {
  factory $PickerSelectorEventCopyWith(
          PickerSelectorEvent value, $Res Function(PickerSelectorEvent) then) =
      _$PickerSelectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickerSelectorEventCopyWithImpl<$Res>
    implements $PickerSelectorEventCopyWith<$Res> {
  _$PickerSelectorEventCopyWithImpl(this._value, this._then);

  final PickerSelectorEvent _value;
  // ignore: unused_field
  final $Res Function(PickerSelectorEvent) _then;
}

/// @nodoc
abstract class _$TickCopyWith<$Res> {
  factory _$TickCopyWith(_Tick value, $Res Function(_Tick) then) =
      __$TickCopyWithImpl<$Res>;
  $Res call({int index, List<Picker> pickers});
}

/// @nodoc
class __$TickCopyWithImpl<$Res> extends _$PickerSelectorEventCopyWithImpl<$Res>
    implements _$TickCopyWith<$Res> {
  __$TickCopyWithImpl(_Tick _value, $Res Function(_Tick) _then)
      : super(_value, (v) => _then(v as _Tick));

  @override
  _Tick get _value => super._value as _Tick;

  @override
  $Res call({
    Object? index = freezed,
    Object? pickers = freezed,
  }) {
    return _then(_Tick(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pickers: pickers == freezed
          ? _value.pickers
          : pickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
    ));
  }
}

/// @nodoc

class _$_Tick implements _Tick {
  const _$_Tick({required this.index, required this.pickers});

  @override
  final int index;
  @override
  final List<Picker> pickers;

  @override
  String toString() {
    return 'PickerSelectorEvent.tick(index: $index, pickers: $pickers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tick &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.pickers, pickers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(pickers));

  @JsonKey(ignore: true)
  @override
  _$TickCopyWith<_Tick> get copyWith =>
      __$TickCopyWithImpl<_Tick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<Picker> pickers) tick,
    required TResult Function(int index, List<Picker> pickers) updateStream,
    required TResult Function(Picker picker) complete,
  }) {
    return tick(index, pickers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
  }) {
    return tick?.call(index, pickers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(index, pickers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_UpdateStream value) updateStream,
    required TResult Function(_Complete value) complete,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _Tick implements PickerSelectorEvent {
  const factory _Tick({required int index, required List<Picker> pickers}) =
      _$_Tick;

  int get index;
  List<Picker> get pickers;
  @JsonKey(ignore: true)
  _$TickCopyWith<_Tick> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateStreamCopyWith<$Res> {
  factory _$UpdateStreamCopyWith(
          _UpdateStream value, $Res Function(_UpdateStream) then) =
      __$UpdateStreamCopyWithImpl<$Res>;
  $Res call({int index, List<Picker> pickers});
}

/// @nodoc
class __$UpdateStreamCopyWithImpl<$Res>
    extends _$PickerSelectorEventCopyWithImpl<$Res>
    implements _$UpdateStreamCopyWith<$Res> {
  __$UpdateStreamCopyWithImpl(
      _UpdateStream _value, $Res Function(_UpdateStream) _then)
      : super(_value, (v) => _then(v as _UpdateStream));

  @override
  _UpdateStream get _value => super._value as _UpdateStream;

  @override
  $Res call({
    Object? index = freezed,
    Object? pickers = freezed,
  }) {
    return _then(_UpdateStream(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pickers: pickers == freezed
          ? _value.pickers
          : pickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
    ));
  }
}

/// @nodoc

@protected
class _$_UpdateStream implements _UpdateStream {
  const _$_UpdateStream({required this.index, required this.pickers});

  @override
  final int index;
  @override
  final List<Picker> pickers;

  @override
  String toString() {
    return 'PickerSelectorEvent.updateStream(index: $index, pickers: $pickers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateStream &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.pickers, pickers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(pickers));

  @JsonKey(ignore: true)
  @override
  _$UpdateStreamCopyWith<_UpdateStream> get copyWith =>
      __$UpdateStreamCopyWithImpl<_UpdateStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<Picker> pickers) tick,
    required TResult Function(int index, List<Picker> pickers) updateStream,
    required TResult Function(Picker picker) complete,
  }) {
    return updateStream(index, pickers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
  }) {
    return updateStream?.call(index, pickers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
    required TResult orElse(),
  }) {
    if (updateStream != null) {
      return updateStream(index, pickers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_UpdateStream value) updateStream,
    required TResult Function(_Complete value) complete,
  }) {
    return updateStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
  }) {
    return updateStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (updateStream != null) {
      return updateStream(this);
    }
    return orElse();
  }
}

abstract class _UpdateStream implements PickerSelectorEvent {
  const factory _UpdateStream(
      {required int index, required List<Picker> pickers}) = _$_UpdateStream;

  int get index;
  List<Picker> get pickers;
  @JsonKey(ignore: true)
  _$UpdateStreamCopyWith<_UpdateStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompleteCopyWith<$Res> {
  factory _$CompleteCopyWith(_Complete value, $Res Function(_Complete) then) =
      __$CompleteCopyWithImpl<$Res>;
  $Res call({Picker picker});

  $PickerCopyWith<$Res> get picker;
}

/// @nodoc
class __$CompleteCopyWithImpl<$Res>
    extends _$PickerSelectorEventCopyWithImpl<$Res>
    implements _$CompleteCopyWith<$Res> {
  __$CompleteCopyWithImpl(_Complete _value, $Res Function(_Complete) _then)
      : super(_value, (v) => _then(v as _Complete));

  @override
  _Complete get _value => super._value as _Complete;

  @override
  $Res call({
    Object? picker = freezed,
  }) {
    return _then(_Complete(
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

class _$_Complete implements _Complete {
  const _$_Complete(this.picker);

  @override
  final Picker picker;

  @override
  String toString() {
    return 'PickerSelectorEvent.complete(picker: $picker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Complete &&
            const DeepCollectionEquality().equals(other.picker, picker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(picker));

  @JsonKey(ignore: true)
  @override
  _$CompleteCopyWith<_Complete> get copyWith =>
      __$CompleteCopyWithImpl<_Complete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<Picker> pickers) tick,
    required TResult Function(int index, List<Picker> pickers) updateStream,
    required TResult Function(Picker picker) complete,
  }) {
    return complete(picker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
  }) {
    return complete?.call(picker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<Picker> pickers)? tick,
    TResult Function(int index, List<Picker> pickers)? updateStream,
    TResult Function(Picker picker)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(picker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tick value) tick,
    required TResult Function(_UpdateStream value) updateStream,
    required TResult Function(_Complete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tick value)? tick,
    TResult Function(_UpdateStream value)? updateStream,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements PickerSelectorEvent {
  const factory _Complete(Picker picker) = _$_Complete;

  Picker get picker;
  @JsonKey(ignore: true)
  _$CompleteCopyWith<_Complete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PickerSelectorStateTearOff {
  const _$PickerSelectorStateTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _Ready ready(List<Picker> pickers) {
    return _Ready(
      pickers,
    );
  }

  PickerSelected selected({required Picker picker}) {
    return PickerSelected(
      picker: picker,
    );
  }
}

/// @nodoc
const $PickerSelectorState = _$PickerSelectorStateTearOff();

/// @nodoc
mixin _$PickerSelectorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Picker> pickers) ready,
    required TResult Function(Picker picker) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Ready value) ready,
    required TResult Function(PickerSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerSelectorStateCopyWith<$Res> {
  factory $PickerSelectorStateCopyWith(
          PickerSelectorState value, $Res Function(PickerSelectorState) then) =
      _$PickerSelectorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickerSelectorStateCopyWithImpl<$Res>
    implements $PickerSelectorStateCopyWith<$Res> {
  _$PickerSelectorStateCopyWithImpl(this._value, this._then);

  final PickerSelectorState _value;
  // ignore: unused_field
  final $Res Function(PickerSelectorState) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$PickerSelectorStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'PickerSelectorState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Picker> pickers) ready,
    required TResult Function(Picker picker) selected,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
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
    required TResult Function(_Empty value) empty,
    required TResult Function(_Ready value) ready,
    required TResult Function(PickerSelected value) selected,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements PickerSelectorState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call({List<Picker> pickers});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> extends _$PickerSelectorStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object? pickers = freezed,
  }) {
    return _then(_Ready(
      pickers == freezed
          ? _value.pickers
          : pickers // ignore: cast_nullable_to_non_nullable
              as List<Picker>,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(this.pickers);

  @override
  final List<Picker> pickers;

  @override
  String toString() {
    return 'PickerSelectorState.ready(pickers: $pickers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ready &&
            const DeepCollectionEquality().equals(other.pickers, pickers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pickers));

  @JsonKey(ignore: true)
  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Picker> pickers) ready,
    required TResult Function(Picker picker) selected,
  }) {
    return ready(pickers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
  }) {
    return ready?.call(pickers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(pickers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Ready value) ready,
    required TResult Function(PickerSelected value) selected,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements PickerSelectorState {
  const factory _Ready(List<Picker> pickers) = _$_Ready;

  List<Picker> get pickers;
  @JsonKey(ignore: true)
  _$ReadyCopyWith<_Ready> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickerSelectedCopyWith<$Res> {
  factory $PickerSelectedCopyWith(
          PickerSelected value, $Res Function(PickerSelected) then) =
      _$PickerSelectedCopyWithImpl<$Res>;
  $Res call({Picker picker});

  $PickerCopyWith<$Res> get picker;
}

/// @nodoc
class _$PickerSelectedCopyWithImpl<$Res>
    extends _$PickerSelectorStateCopyWithImpl<$Res>
    implements $PickerSelectedCopyWith<$Res> {
  _$PickerSelectedCopyWithImpl(
      PickerSelected _value, $Res Function(PickerSelected) _then)
      : super(_value, (v) => _then(v as PickerSelected));

  @override
  PickerSelected get _value => super._value as PickerSelected;

  @override
  $Res call({
    Object? picker = freezed,
  }) {
    return _then(PickerSelected(
      picker: picker == freezed
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

class _$PickerSelected implements PickerSelected {
  const _$PickerSelected({required this.picker});

  @override
  final Picker picker;

  @override
  String toString() {
    return 'PickerSelectorState.selected(picker: $picker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickerSelected &&
            const DeepCollectionEquality().equals(other.picker, picker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(picker));

  @JsonKey(ignore: true)
  @override
  $PickerSelectedCopyWith<PickerSelected> get copyWith =>
      _$PickerSelectedCopyWithImpl<PickerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Picker> pickers) ready,
    required TResult Function(Picker picker) selected,
  }) {
    return selected(picker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
  }) {
    return selected?.call(picker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Picker> pickers)? ready,
    TResult Function(Picker picker)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(picker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Ready value) ready,
    required TResult Function(PickerSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Ready value)? ready,
    TResult Function(PickerSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class PickerSelected implements PickerSelectorState {
  const factory PickerSelected({required Picker picker}) = _$PickerSelected;

  Picker get picker;
  @JsonKey(ignore: true)
  $PickerSelectedCopyWith<PickerSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
