// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentEventTearOff {
  const _$ContentEventTearOff();

  _Load load() {
    return const _Load();
  }

  _StreamUpdated streamUpdated(List<Content> contentList) {
    return _StreamUpdated(
      contentList,
    );
  }

  _Insert insert({required String content, String? answer}) {
    return _Insert(
      content: content,
      answer: answer,
    );
  }

  _Toggle toggleAsked(Content content) {
    return _Toggle(
      content,
    );
  }

  _PickRandom pickRandom() {
    return const _PickRandom();
  }

  _Reveal revealAnswer() {
    return const _Reveal();
  }

  _Remove remove(int id) {
    return _Remove(
      id,
    );
  }
}

/// @nodoc
const $ContentEvent = _$ContentEventTearOff();

/// @nodoc
mixin _$ContentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentEventCopyWith<$Res> {
  factory $ContentEventCopyWith(
          ContentEvent value, $Res Function(ContentEvent) then) =
      _$ContentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContentEventCopyWithImpl<$Res> implements $ContentEventCopyWith<$Res> {
  _$ContentEventCopyWithImpl(this._value, this._then);

  final ContentEvent _value;
  // ignore: unused_field
  final $Res Function(ContentEvent) _then;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$ContentEventCopyWithImpl<$Res>
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
    return 'ContentEvent.load()';
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
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
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
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ContentEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$StreamUpdatedCopyWith<$Res> {
  factory _$StreamUpdatedCopyWith(
          _StreamUpdated value, $Res Function(_StreamUpdated) then) =
      __$StreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<Content> contentList});
}

/// @nodoc
class __$StreamUpdatedCopyWithImpl<$Res>
    extends _$ContentEventCopyWithImpl<$Res>
    implements _$StreamUpdatedCopyWith<$Res> {
  __$StreamUpdatedCopyWithImpl(
      _StreamUpdated _value, $Res Function(_StreamUpdated) _then)
      : super(_value, (v) => _then(v as _StreamUpdated));

  @override
  _StreamUpdated get _value => super._value as _StreamUpdated;

  @override
  $Res call({
    Object? contentList = freezed,
  }) {
    return _then(_StreamUpdated(
      contentList == freezed
          ? _value.contentList
          : contentList // ignore: cast_nullable_to_non_nullable
              as List<Content>,
    ));
  }
}

/// @nodoc

@protected
class _$_StreamUpdated implements _StreamUpdated {
  const _$_StreamUpdated(this.contentList);

  @override
  final List<Content> contentList;

  @override
  String toString() {
    return 'ContentEvent.streamUpdated(contentList: $contentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamUpdated &&
            const DeepCollectionEquality()
                .equals(other.contentList, contentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(contentList));

  @JsonKey(ignore: true)
  @override
  _$StreamUpdatedCopyWith<_StreamUpdated> get copyWith =>
      __$StreamUpdatedCopyWithImpl<_StreamUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return streamUpdated(contentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return streamUpdated?.call(contentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (streamUpdated != null) {
      return streamUpdated(contentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return streamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return streamUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (streamUpdated != null) {
      return streamUpdated(this);
    }
    return orElse();
  }
}

abstract class _StreamUpdated implements ContentEvent {
  const factory _StreamUpdated(List<Content> contentList) = _$_StreamUpdated;

  List<Content> get contentList;
  @JsonKey(ignore: true)
  _$StreamUpdatedCopyWith<_StreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InsertCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) then) =
      __$InsertCopyWithImpl<$Res>;
  $Res call({String content, String? answer});
}

/// @nodoc
class __$InsertCopyWithImpl<$Res> extends _$ContentEventCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(_Insert _value, $Res Function(_Insert) _then)
      : super(_value, (v) => _then(v as _Insert));

  @override
  _Insert get _value => super._value as _Insert;

  @override
  $Res call({
    Object? content = freezed,
    Object? answer = freezed,
  }) {
    return _then(_Insert(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Insert implements _Insert {
  const _$_Insert({required this.content, this.answer});

  @override
  final String content;
  @override
  final String? answer;

  @override
  String toString() {
    return 'ContentEvent.insert(content: $content, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Insert &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$InsertCopyWith<_Insert> get copyWith =>
      __$InsertCopyWithImpl<_Insert>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return insert(content, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return insert?.call(content, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (insert != null) {
      return insert(content, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return insert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return insert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class _Insert implements ContentEvent {
  const factory _Insert({required String content, String? answer}) = _$_Insert;

  String get content;
  String? get answer;
  @JsonKey(ignore: true)
  _$InsertCopyWith<_Insert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleCopyWith<$Res> {
  factory _$ToggleCopyWith(_Toggle value, $Res Function(_Toggle) then) =
      __$ToggleCopyWithImpl<$Res>;
  $Res call({Content content});

  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class __$ToggleCopyWithImpl<$Res> extends _$ContentEventCopyWithImpl<$Res>
    implements _$ToggleCopyWith<$Res> {
  __$ToggleCopyWithImpl(_Toggle _value, $Res Function(_Toggle) _then)
      : super(_value, (v) => _then(v as _Toggle));

  @override
  _Toggle get _value => super._value as _Toggle;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_Toggle(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
    ));
  }

  @override
  $ContentCopyWith<$Res> get content {
    return $ContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

class _$_Toggle implements _Toggle {
  const _$_Toggle(this.content);

  @override
  final Content content;

  @override
  String toString() {
    return 'ContentEvent.toggleAsked(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Toggle &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$ToggleCopyWith<_Toggle> get copyWith =>
      __$ToggleCopyWithImpl<_Toggle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return toggleAsked(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return toggleAsked?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (toggleAsked != null) {
      return toggleAsked(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return toggleAsked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return toggleAsked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (toggleAsked != null) {
      return toggleAsked(this);
    }
    return orElse();
  }
}

abstract class _Toggle implements ContentEvent {
  const factory _Toggle(Content content) = _$_Toggle;

  Content get content;
  @JsonKey(ignore: true)
  _$ToggleCopyWith<_Toggle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PickRandomCopyWith<$Res> {
  factory _$PickRandomCopyWith(
          _PickRandom value, $Res Function(_PickRandom) then) =
      __$PickRandomCopyWithImpl<$Res>;
}

/// @nodoc
class __$PickRandomCopyWithImpl<$Res> extends _$ContentEventCopyWithImpl<$Res>
    implements _$PickRandomCopyWith<$Res> {
  __$PickRandomCopyWithImpl(
      _PickRandom _value, $Res Function(_PickRandom) _then)
      : super(_value, (v) => _then(v as _PickRandom));

  @override
  _PickRandom get _value => super._value as _PickRandom;
}

/// @nodoc

class _$_PickRandom implements _PickRandom {
  const _$_PickRandom();

  @override
  String toString() {
    return 'ContentEvent.pickRandom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PickRandom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return pickRandom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return pickRandom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (pickRandom != null) {
      return pickRandom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return pickRandom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return pickRandom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (pickRandom != null) {
      return pickRandom(this);
    }
    return orElse();
  }
}

abstract class _PickRandom implements ContentEvent {
  const factory _PickRandom() = _$_PickRandom;
}

/// @nodoc
abstract class _$RevealCopyWith<$Res> {
  factory _$RevealCopyWith(_Reveal value, $Res Function(_Reveal) then) =
      __$RevealCopyWithImpl<$Res>;
}

/// @nodoc
class __$RevealCopyWithImpl<$Res> extends _$ContentEventCopyWithImpl<$Res>
    implements _$RevealCopyWith<$Res> {
  __$RevealCopyWithImpl(_Reveal _value, $Res Function(_Reveal) _then)
      : super(_value, (v) => _then(v as _Reveal));

  @override
  _Reveal get _value => super._value as _Reveal;
}

/// @nodoc

class _$_Reveal implements _Reveal {
  const _$_Reveal();

  @override
  String toString() {
    return 'ContentEvent.revealAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reveal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return revealAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return revealAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
    required TResult orElse(),
  }) {
    if (revealAnswer != null) {
      return revealAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return revealAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return revealAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (revealAnswer != null) {
      return revealAnswer(this);
    }
    return orElse();
  }
}

abstract class _Reveal implements ContentEvent {
  const factory _Reveal() = _$_Reveal;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$ContentEventCopyWithImpl<$Res>
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
    return 'ContentEvent.remove(id: $id)';
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
    required TResult Function() load,
    required TResult Function(List<Content> contentList) streamUpdated,
    required TResult Function(String content, String? answer) insert,
    required TResult Function(Content content) toggleAsked,
    required TResult Function() pickRandom,
    required TResult Function() revealAnswer,
    required TResult Function(int id) remove,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Content> contentList)? streamUpdated,
    TResult Function(String content, String? answer)? insert,
    TResult Function(Content content)? toggleAsked,
    TResult Function()? pickRandom,
    TResult Function()? revealAnswer,
    TResult Function(int id)? remove,
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
    required TResult Function(_Load value) load,
    required TResult Function(_StreamUpdated value) streamUpdated,
    required TResult Function(_Insert value) insert,
    required TResult Function(_Toggle value) toggleAsked,
    required TResult Function(_PickRandom value) pickRandom,
    required TResult Function(_Reveal value) revealAnswer,
    required TResult Function(_Remove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_StreamUpdated value)? streamUpdated,
    TResult Function(_Insert value)? insert,
    TResult Function(_Toggle value)? toggleAsked,
    TResult Function(_PickRandom value)? pickRandom,
    TResult Function(_Reveal value)? revealAnswer,
    TResult Function(_Remove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements ContentEvent {
  const factory _Remove(int id) = _$_Remove;

  int get id;
  @JsonKey(ignore: true)
  _$RemoveCopyWith<_Remove> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContentStateTearOff {
  const _$ContentStateTearOff();

  ContentStateEmpty empty() {
    return const ContentStateEmpty();
  }

  ContentStateLoaded loaded(List<Content> contentList) {
    return ContentStateLoaded(
      contentList,
    );
  }

  ContentStateSelected selected(
      {required Content selectedContent, required List<Content> contentList}) {
    return ContentStateSelected(
      selectedContent: selectedContent,
      contentList: contentList,
    );
  }

  ContentStateAnswerRevealed answerRevealed(
      {required Content selectedContent, required List<Content> contentList}) {
    return ContentStateAnswerRevealed(
      selectedContent: selectedContent,
      contentList: contentList,
    );
  }
}

/// @nodoc
const $ContentState = _$ContentStateTearOff();

/// @nodoc
mixin _$ContentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Content> contentList) loaded,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        selected,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        answerRevealed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentStateEmpty value) empty,
    required TResult Function(ContentStateLoaded value) loaded,
    required TResult Function(ContentStateSelected value) selected,
    required TResult Function(ContentStateAnswerRevealed value) answerRevealed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res> implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(this._value, this._then);

  final ContentState _value;
  // ignore: unused_field
  final $Res Function(ContentState) _then;
}

/// @nodoc
abstract class $ContentStateEmptyCopyWith<$Res> {
  factory $ContentStateEmptyCopyWith(
          ContentStateEmpty value, $Res Function(ContentStateEmpty) then) =
      _$ContentStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContentStateEmptyCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements $ContentStateEmptyCopyWith<$Res> {
  _$ContentStateEmptyCopyWithImpl(
      ContentStateEmpty _value, $Res Function(ContentStateEmpty) _then)
      : super(_value, (v) => _then(v as ContentStateEmpty));

  @override
  ContentStateEmpty get _value => super._value as ContentStateEmpty;
}

/// @nodoc

class _$ContentStateEmpty implements ContentStateEmpty {
  const _$ContentStateEmpty();

  @override
  String toString() {
    return 'ContentState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ContentStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Content> contentList) loaded,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        selected,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        answerRevealed,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
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
    required TResult Function(ContentStateEmpty value) empty,
    required TResult Function(ContentStateLoaded value) loaded,
    required TResult Function(ContentStateSelected value) selected,
    required TResult Function(ContentStateAnswerRevealed value) answerRevealed,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ContentStateEmpty implements ContentState {
  const factory ContentStateEmpty() = _$ContentStateEmpty;
}

/// @nodoc
abstract class $ContentStateLoadedCopyWith<$Res> {
  factory $ContentStateLoadedCopyWith(
          ContentStateLoaded value, $Res Function(ContentStateLoaded) then) =
      _$ContentStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Content> contentList});
}

/// @nodoc
class _$ContentStateLoadedCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements $ContentStateLoadedCopyWith<$Res> {
  _$ContentStateLoadedCopyWithImpl(
      ContentStateLoaded _value, $Res Function(ContentStateLoaded) _then)
      : super(_value, (v) => _then(v as ContentStateLoaded));

  @override
  ContentStateLoaded get _value => super._value as ContentStateLoaded;

  @override
  $Res call({
    Object? contentList = freezed,
  }) {
    return _then(ContentStateLoaded(
      contentList == freezed
          ? _value.contentList
          : contentList // ignore: cast_nullable_to_non_nullable
              as List<Content>,
    ));
  }
}

/// @nodoc

class _$ContentStateLoaded implements ContentStateLoaded {
  const _$ContentStateLoaded(this.contentList);

  @override
  final List<Content> contentList;

  @override
  String toString() {
    return 'ContentState.loaded(contentList: $contentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContentStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.contentList, contentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(contentList));

  @JsonKey(ignore: true)
  @override
  $ContentStateLoadedCopyWith<ContentStateLoaded> get copyWith =>
      _$ContentStateLoadedCopyWithImpl<ContentStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Content> contentList) loaded,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        selected,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        answerRevealed,
  }) {
    return loaded(contentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
  }) {
    return loaded?.call(contentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(contentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentStateEmpty value) empty,
    required TResult Function(ContentStateLoaded value) loaded,
    required TResult Function(ContentStateSelected value) selected,
    required TResult Function(ContentStateAnswerRevealed value) answerRevealed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContentStateLoaded implements ContentState {
  const factory ContentStateLoaded(List<Content> contentList) =
      _$ContentStateLoaded;

  List<Content> get contentList;
  @JsonKey(ignore: true)
  $ContentStateLoadedCopyWith<ContentStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateSelectedCopyWith<$Res> {
  factory $ContentStateSelectedCopyWith(ContentStateSelected value,
          $Res Function(ContentStateSelected) then) =
      _$ContentStateSelectedCopyWithImpl<$Res>;
  $Res call({Content selectedContent, List<Content> contentList});

  $ContentCopyWith<$Res> get selectedContent;
}

/// @nodoc
class _$ContentStateSelectedCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements $ContentStateSelectedCopyWith<$Res> {
  _$ContentStateSelectedCopyWithImpl(
      ContentStateSelected _value, $Res Function(ContentStateSelected) _then)
      : super(_value, (v) => _then(v as ContentStateSelected));

  @override
  ContentStateSelected get _value => super._value as ContentStateSelected;

  @override
  $Res call({
    Object? selectedContent = freezed,
    Object? contentList = freezed,
  }) {
    return _then(ContentStateSelected(
      selectedContent: selectedContent == freezed
          ? _value.selectedContent
          : selectedContent // ignore: cast_nullable_to_non_nullable
              as Content,
      contentList: contentList == freezed
          ? _value.contentList
          : contentList // ignore: cast_nullable_to_non_nullable
              as List<Content>,
    ));
  }

  @override
  $ContentCopyWith<$Res> get selectedContent {
    return $ContentCopyWith<$Res>(_value.selectedContent, (value) {
      return _then(_value.copyWith(selectedContent: value));
    });
  }
}

/// @nodoc

class _$ContentStateSelected implements ContentStateSelected {
  const _$ContentStateSelected(
      {required this.selectedContent, required this.contentList});

  @override
  final Content selectedContent;
  @override
  final List<Content> contentList;

  @override
  String toString() {
    return 'ContentState.selected(selectedContent: $selectedContent, contentList: $contentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContentStateSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedContent, selectedContent) &&
            const DeepCollectionEquality()
                .equals(other.contentList, contentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedContent),
      const DeepCollectionEquality().hash(contentList));

  @JsonKey(ignore: true)
  @override
  $ContentStateSelectedCopyWith<ContentStateSelected> get copyWith =>
      _$ContentStateSelectedCopyWithImpl<ContentStateSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Content> contentList) loaded,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        selected,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        answerRevealed,
  }) {
    return selected(selectedContent, contentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
  }) {
    return selected?.call(selectedContent, contentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(selectedContent, contentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentStateEmpty value) empty,
    required TResult Function(ContentStateLoaded value) loaded,
    required TResult Function(ContentStateSelected value) selected,
    required TResult Function(ContentStateAnswerRevealed value) answerRevealed,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class ContentStateSelected implements ContentState {
  const factory ContentStateSelected(
      {required Content selectedContent,
      required List<Content> contentList}) = _$ContentStateSelected;

  Content get selectedContent;
  List<Content> get contentList;
  @JsonKey(ignore: true)
  $ContentStateSelectedCopyWith<ContentStateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateAnswerRevealedCopyWith<$Res> {
  factory $ContentStateAnswerRevealedCopyWith(ContentStateAnswerRevealed value,
          $Res Function(ContentStateAnswerRevealed) then) =
      _$ContentStateAnswerRevealedCopyWithImpl<$Res>;
  $Res call({Content selectedContent, List<Content> contentList});

  $ContentCopyWith<$Res> get selectedContent;
}

/// @nodoc
class _$ContentStateAnswerRevealedCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements $ContentStateAnswerRevealedCopyWith<$Res> {
  _$ContentStateAnswerRevealedCopyWithImpl(ContentStateAnswerRevealed _value,
      $Res Function(ContentStateAnswerRevealed) _then)
      : super(_value, (v) => _then(v as ContentStateAnswerRevealed));

  @override
  ContentStateAnswerRevealed get _value =>
      super._value as ContentStateAnswerRevealed;

  @override
  $Res call({
    Object? selectedContent = freezed,
    Object? contentList = freezed,
  }) {
    return _then(ContentStateAnswerRevealed(
      selectedContent: selectedContent == freezed
          ? _value.selectedContent
          : selectedContent // ignore: cast_nullable_to_non_nullable
              as Content,
      contentList: contentList == freezed
          ? _value.contentList
          : contentList // ignore: cast_nullable_to_non_nullable
              as List<Content>,
    ));
  }

  @override
  $ContentCopyWith<$Res> get selectedContent {
    return $ContentCopyWith<$Res>(_value.selectedContent, (value) {
      return _then(_value.copyWith(selectedContent: value));
    });
  }
}

/// @nodoc

class _$ContentStateAnswerRevealed implements ContentStateAnswerRevealed {
  const _$ContentStateAnswerRevealed(
      {required this.selectedContent, required this.contentList});

  @override
  final Content selectedContent;
  @override
  final List<Content> contentList;

  @override
  String toString() {
    return 'ContentState.answerRevealed(selectedContent: $selectedContent, contentList: $contentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContentStateAnswerRevealed &&
            const DeepCollectionEquality()
                .equals(other.selectedContent, selectedContent) &&
            const DeepCollectionEquality()
                .equals(other.contentList, contentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedContent),
      const DeepCollectionEquality().hash(contentList));

  @JsonKey(ignore: true)
  @override
  $ContentStateAnswerRevealedCopyWith<ContentStateAnswerRevealed>
      get copyWith =>
          _$ContentStateAnswerRevealedCopyWithImpl<ContentStateAnswerRevealed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<Content> contentList) loaded,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        selected,
    required TResult Function(
            Content selectedContent, List<Content> contentList)
        answerRevealed,
  }) {
    return answerRevealed(selectedContent, contentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
  }) {
    return answerRevealed?.call(selectedContent, contentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<Content> contentList)? loaded,
    TResult Function(Content selectedContent, List<Content> contentList)?
        selected,
    TResult Function(Content selectedContent, List<Content> contentList)?
        answerRevealed,
    required TResult orElse(),
  }) {
    if (answerRevealed != null) {
      return answerRevealed(selectedContent, contentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentStateEmpty value) empty,
    required TResult Function(ContentStateLoaded value) loaded,
    required TResult Function(ContentStateSelected value) selected,
    required TResult Function(ContentStateAnswerRevealed value) answerRevealed,
  }) {
    return answerRevealed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
  }) {
    return answerRevealed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentStateEmpty value)? empty,
    TResult Function(ContentStateLoaded value)? loaded,
    TResult Function(ContentStateSelected value)? selected,
    TResult Function(ContentStateAnswerRevealed value)? answerRevealed,
    required TResult orElse(),
  }) {
    if (answerRevealed != null) {
      return answerRevealed(this);
    }
    return orElse();
  }
}

abstract class ContentStateAnswerRevealed implements ContentState {
  const factory ContentStateAnswerRevealed(
      {required Content selectedContent,
      required List<Content> contentList}) = _$ContentStateAnswerRevealed;

  Content get selectedContent;
  List<Content> get contentList;
  @JsonKey(ignore: true)
  $ContentStateAnswerRevealedCopyWith<ContentStateAnswerRevealed>
      get copyWith => throw _privateConstructorUsedError;
}
