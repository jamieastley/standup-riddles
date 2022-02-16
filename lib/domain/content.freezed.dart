// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  _Content call(
      {required int id,
      required String content,
      String? answer,
      required bool hasBeenAsked}) {
    return _Content(
      id: id,
      content: content,
      answer: answer,
      hasBeenAsked: hasBeenAsked,
    );
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  bool get hasBeenAsked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call({int id, String content, String? answer, bool hasBeenAsked});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? answer = freezed,
    Object? hasBeenAsked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBeenAsked: hasBeenAsked == freezed
          ? _value.hasBeenAsked
          : hasBeenAsked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call({int id, String content, String? answer, bool hasBeenAsked});
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? answer = freezed,
    Object? hasBeenAsked = freezed,
  }) {
    return _then(_Content(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBeenAsked: hasBeenAsked == freezed
          ? _value.hasBeenAsked
          : hasBeenAsked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Content implements _Content {
  const _$_Content(
      {required this.id,
      required this.content,
      this.answer,
      required this.hasBeenAsked});

  @override
  final int id;
  @override
  final String content;
  @override
  final String? answer;
  @override
  final bool hasBeenAsked;

  @override
  String toString() {
    return 'Content(id: $id, content: $content, answer: $answer, hasBeenAsked: $hasBeenAsked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality()
                .equals(other.hasBeenAsked, hasBeenAsked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(hasBeenAsked));

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);
}

abstract class _Content implements Content {
  const factory _Content(
      {required int id,
      required String content,
      String? answer,
      required bool hasBeenAsked}) = _$_Content;

  @override
  int get id;
  @override
  String get content;
  @override
  String? get answer;
  @override
  bool get hasBeenAsked;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
