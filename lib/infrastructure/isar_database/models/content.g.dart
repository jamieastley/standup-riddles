// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetContentCollection on Isar {
  IsarCollection<Content> get contents {
    return getCollection('Content');
  }
}

final ContentSchema = CollectionSchema(
  name: 'Content',
  schema:
      '{"name":"Content","idName":"id","properties":[{"name":"answer","type":"String"},{"name":"content","type":"String"},{"name":"hasBeenAsked","type":"Bool"}],"indexes":[],"links":[]}',
  nativeAdapter: const _ContentNativeAdapter(),
  webAdapter: const _ContentWebAdapter(),
  idName: 'id',
  propertyIds: {'answer': 0, 'content': 1, 'hasBeenAsked': 2},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _ContentWebAdapter extends IsarWebTypeAdapter<Content> {
  const _ContentWebAdapter();

  @override
  Object serialize(IsarCollection<Content> collection, Content object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'answer', object.answer);
    IsarNative.jsObjectSet(jsObj, 'content', object.content);
    IsarNative.jsObjectSet(jsObj, 'hasBeenAsked', object.hasBeenAsked);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    return jsObj;
  }

  @override
  Content deserialize(IsarCollection<Content> collection, dynamic jsObj) {
    final object = Content();
    object.answer = IsarNative.jsObjectGet(jsObj, 'answer');
    object.content = IsarNative.jsObjectGet(jsObj, 'content') ?? '';
    object.hasBeenAsked =
        IsarNative.jsObjectGet(jsObj, 'hasBeenAsked') ?? false;
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'answer':
        return (IsarNative.jsObjectGet(jsObj, 'answer')) as P;
      case 'content':
        return (IsarNative.jsObjectGet(jsObj, 'content') ?? '') as P;
      case 'hasBeenAsked':
        return (IsarNative.jsObjectGet(jsObj, 'hasBeenAsked') ?? false) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Content object) {}
}

class _ContentNativeAdapter extends IsarNativeTypeAdapter<Content> {
  const _ContentNativeAdapter();

  @override
  void serialize(IsarCollection<Content> collection, IsarRawObject rawObj,
      Content object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.answer;
    IsarUint8List? _answer;
    if (value0 != null) {
      _answer = IsarBinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += (_answer?.length ?? 0) as int;
    final value1 = object.content;
    final _content = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_content.length) as int;
    final value2 = object.hasBeenAsked;
    final _hasBeenAsked = value2;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _answer);
    writer.writeBytes(offsets[1], _content);
    writer.writeBool(offsets[2], _hasBeenAsked);
  }

  @override
  Content deserialize(IsarCollection<Content> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Content();
    object.answer = reader.readStringOrNull(offsets[0]);
    object.content = reader.readString(offsets[1]);
    object.hasBeenAsked = reader.readBool(offsets[2]);
    object.id = id;
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Content object) {}
}

extension ContentQueryWhereSort on QueryBuilder<Content, Content, QWhere> {
  QueryBuilder<Content, Content, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension ContentQueryWhere on QueryBuilder<Content, Content, QWhereClause> {
  QueryBuilder<Content, Content, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Content, Content, QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Content, Content, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Content, Content, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Content, Content, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension ContentQueryFilter
    on QueryBuilder<Content, Content, QFilterCondition> {
  QueryBuilder<Content, Content, QAfterFilterCondition> answerIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'answer',
      value: null,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'answer',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'answer',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'answer',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'answer',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'answer',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'answer',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'answer',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> answerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'answer',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'content',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'content',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'content',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> hasBeenAskedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hasBeenAsked',
      value: value,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Content, Content, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ContentQueryWhereSortBy on QueryBuilder<Content, Content, QSortBy> {
  QueryBuilder<Content, Content, QAfterSortBy> sortByAnswer() {
    return addSortByInternal('answer', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortByAnswerDesc() {
    return addSortByInternal('answer', Sort.desc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortByContent() {
    return addSortByInternal('content', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortByContentDesc() {
    return addSortByInternal('content', Sort.desc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortByHasBeenAsked() {
    return addSortByInternal('hasBeenAsked', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortByHasBeenAskedDesc() {
    return addSortByInternal('hasBeenAsked', Sort.desc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ContentQueryWhereSortThenBy
    on QueryBuilder<Content, Content, QSortThenBy> {
  QueryBuilder<Content, Content, QAfterSortBy> thenByAnswer() {
    return addSortByInternal('answer', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenByAnswerDesc() {
    return addSortByInternal('answer', Sort.desc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenByContent() {
    return addSortByInternal('content', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenByContentDesc() {
    return addSortByInternal('content', Sort.desc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenByHasBeenAsked() {
    return addSortByInternal('hasBeenAsked', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenByHasBeenAskedDesc() {
    return addSortByInternal('hasBeenAsked', Sort.desc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Content, Content, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension ContentQueryWhereDistinct
    on QueryBuilder<Content, Content, QDistinct> {
  QueryBuilder<Content, Content, QDistinct> distinctByAnswer(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('answer', caseSensitive: caseSensitive);
  }

  QueryBuilder<Content, Content, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('content', caseSensitive: caseSensitive);
  }

  QueryBuilder<Content, Content, QDistinct> distinctByHasBeenAsked() {
    return addDistinctByInternal('hasBeenAsked');
  }

  QueryBuilder<Content, Content, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension ContentQueryProperty
    on QueryBuilder<Content, Content, QQueryProperty> {
  QueryBuilder<Content, String?, QQueryOperations> answerProperty() {
    return addPropertyNameInternal('answer');
  }

  QueryBuilder<Content, String, QQueryOperations> contentProperty() {
    return addPropertyNameInternal('content');
  }

  QueryBuilder<Content, bool, QQueryOperations> hasBeenAskedProperty() {
    return addPropertyNameInternal('hasBeenAsked');
  }

  QueryBuilder<Content, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}
