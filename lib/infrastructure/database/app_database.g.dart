// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Name extends DataClass implements Insertable<Name> {
  final int id;
  final String name;
  final bool hasBeenPicked;
  Name({required this.id, required this.name, required this.hasBeenPicked});
  factory Name.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Name(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      hasBeenPicked: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}has_been_picked'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['has_been_picked'] = Variable<bool>(hasBeenPicked);
    return map;
  }

  NamesCompanion toCompanion(bool nullToAbsent) {
    return NamesCompanion(
      id: Value(id),
      name: Value(name),
      hasBeenPicked: Value(hasBeenPicked),
    );
  }

  factory Name.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Name(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      hasBeenPicked: serializer.fromJson<bool>(json['hasBeenPicked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'hasBeenPicked': serializer.toJson<bool>(hasBeenPicked),
    };
  }

  Name copyWith({int? id, String? name, bool? hasBeenPicked}) => Name(
        id: id ?? this.id,
        name: name ?? this.name,
        hasBeenPicked: hasBeenPicked ?? this.hasBeenPicked,
      );
  @override
  String toString() {
    return (StringBuffer('Name(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('hasBeenPicked: $hasBeenPicked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, hasBeenPicked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Name &&
          other.id == this.id &&
          other.name == this.name &&
          other.hasBeenPicked == this.hasBeenPicked);
}

class NamesCompanion extends UpdateCompanion<Name> {
  final Value<int> id;
  final Value<String> name;
  final Value<bool> hasBeenPicked;
  const NamesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.hasBeenPicked = const Value.absent(),
  });
  NamesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.hasBeenPicked = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Name> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<bool>? hasBeenPicked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (hasBeenPicked != null) 'has_been_picked': hasBeenPicked,
    });
  }

  NamesCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<bool>? hasBeenPicked}) {
    return NamesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      hasBeenPicked: hasBeenPicked ?? this.hasBeenPicked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (hasBeenPicked.present) {
      map['has_been_picked'] = Variable<bool>(hasBeenPicked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NamesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('hasBeenPicked: $hasBeenPicked')
          ..write(')'))
        .toString();
  }
}

class $NamesTable extends Names with TableInfo<$NamesTable, Name> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NamesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _hasBeenPickedMeta =
      const VerificationMeta('hasBeenPicked');
  @override
  late final GeneratedColumn<bool?> hasBeenPicked = GeneratedColumn<bool?>(
      'has_been_picked', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (has_been_picked IN (0, 1))',
      clientDefault: () => false);
  @override
  List<GeneratedColumn> get $columns => [id, name, hasBeenPicked];
  @override
  String get aliasedName => _alias ?? 'names';
  @override
  String get actualTableName => 'names';
  @override
  VerificationContext validateIntegrity(Insertable<Name> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('has_been_picked')) {
      context.handle(
          _hasBeenPickedMeta,
          hasBeenPicked.isAcceptableOrUnknown(
              data['has_been_picked']!, _hasBeenPickedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Name map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Name.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NamesTable createAlias(String alias) {
    return $NamesTable(attachedDatabase, alias);
  }
}

class ContentData extends DataClass implements Insertable<ContentData> {
  final int id;
  final String content;
  final String? answer;
  final bool hasBeenAsked;
  ContentData(
      {required this.id,
      required this.content,
      this.answer,
      required this.hasBeenAsked});
  factory ContentData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ContentData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
      answer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer']),
      hasBeenAsked: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}has_been_asked'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['content'] = Variable<String>(content);
    if (!nullToAbsent || answer != null) {
      map['answer'] = Variable<String?>(answer);
    }
    map['has_been_asked'] = Variable<bool>(hasBeenAsked);
    return map;
  }

  ContentCompanion toCompanion(bool nullToAbsent) {
    return ContentCompanion(
      id: Value(id),
      content: Value(content),
      answer:
          answer == null && nullToAbsent ? const Value.absent() : Value(answer),
      hasBeenAsked: Value(hasBeenAsked),
    );
  }

  factory ContentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentData(
      id: serializer.fromJson<int>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      answer: serializer.fromJson<String?>(json['answer']),
      hasBeenAsked: serializer.fromJson<bool>(json['hasBeenAsked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'content': serializer.toJson<String>(content),
      'answer': serializer.toJson<String?>(answer),
      'hasBeenAsked': serializer.toJson<bool>(hasBeenAsked),
    };
  }

  ContentData copyWith(
          {int? id, String? content, String? answer, bool? hasBeenAsked}) =>
      ContentData(
        id: id ?? this.id,
        content: content ?? this.content,
        answer: answer ?? this.answer,
        hasBeenAsked: hasBeenAsked ?? this.hasBeenAsked,
      );
  @override
  String toString() {
    return (StringBuffer('ContentData(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('answer: $answer, ')
          ..write('hasBeenAsked: $hasBeenAsked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, content, answer, hasBeenAsked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentData &&
          other.id == this.id &&
          other.content == this.content &&
          other.answer == this.answer &&
          other.hasBeenAsked == this.hasBeenAsked);
}

class ContentCompanion extends UpdateCompanion<ContentData> {
  final Value<int> id;
  final Value<String> content;
  final Value<String?> answer;
  final Value<bool> hasBeenAsked;
  const ContentCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.answer = const Value.absent(),
    this.hasBeenAsked = const Value.absent(),
  });
  ContentCompanion.insert({
    this.id = const Value.absent(),
    required String content,
    this.answer = const Value.absent(),
    this.hasBeenAsked = const Value.absent(),
  }) : content = Value(content);
  static Insertable<ContentData> custom({
    Expression<int>? id,
    Expression<String>? content,
    Expression<String?>? answer,
    Expression<bool>? hasBeenAsked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'content': content,
      if (answer != null) 'answer': answer,
      if (hasBeenAsked != null) 'has_been_asked': hasBeenAsked,
    });
  }

  ContentCompanion copyWith(
      {Value<int>? id,
      Value<String>? content,
      Value<String?>? answer,
      Value<bool>? hasBeenAsked}) {
    return ContentCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      answer: answer ?? this.answer,
      hasBeenAsked: hasBeenAsked ?? this.hasBeenAsked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String?>(answer.value);
    }
    if (hasBeenAsked.present) {
      map['has_been_asked'] = Variable<bool>(hasBeenAsked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('answer: $answer, ')
          ..write('hasBeenAsked: $hasBeenAsked')
          ..write(')'))
        .toString();
  }
}

class $ContentTable extends Content with TableInfo<$ContentTable, ContentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String?> answer = GeneratedColumn<String?>(
      'answer', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _hasBeenAskedMeta =
      const VerificationMeta('hasBeenAsked');
  @override
  late final GeneratedColumn<bool?> hasBeenAsked = GeneratedColumn<bool?>(
      'has_been_asked', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (has_been_asked IN (0, 1))',
      clientDefault: () => false);
  @override
  List<GeneratedColumn> get $columns => [id, content, answer, hasBeenAsked];
  @override
  String get aliasedName => _alias ?? 'content';
  @override
  String get actualTableName => 'content';
  @override
  VerificationContext validateIntegrity(Insertable<ContentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    }
    if (data.containsKey('has_been_asked')) {
      context.handle(
          _hasBeenAskedMeta,
          hasBeenAsked.isAcceptableOrUnknown(
              data['has_been_asked']!, _hasBeenAskedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ContentData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ContentTable createAlias(String alias) {
    return $ContentTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NamesTable names = $NamesTable(this);
  late final $ContentTable content = $ContentTable(this);
  late final NamesDao namesDao = NamesDao(this as AppDatabase);
  late final ContentDao contentDao = ContentDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [names, content];
}
