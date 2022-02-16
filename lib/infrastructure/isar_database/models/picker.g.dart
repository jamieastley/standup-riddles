// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picker.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetPickerCollection on Isar {
  IsarCollection<Picker> get pickers {
    return getCollection('Picker');
  }
}

final PickerSchema = CollectionSchema(
  name: 'Picker',
  schema:
      '{"name":"Picker","idName":"id","properties":[{"name":"hasBeenPicked","type":"Bool"},{"name":"name","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _PickerNativeAdapter(),
  webAdapter: const _PickerWebAdapter(),
  idName: 'id',
  propertyIds: {'hasBeenPicked': 0, 'name': 1},
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

class _PickerWebAdapter extends IsarWebTypeAdapter<Picker> {
  const _PickerWebAdapter();

  @override
  Object serialize(IsarCollection<Picker> collection, Picker object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'hasBeenPicked', object.hasBeenPicked);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    return jsObj;
  }

  @override
  Picker deserialize(IsarCollection<Picker> collection, dynamic jsObj) {
    final object = Picker();
    object.hasBeenPicked =
        IsarNative.jsObjectGet(jsObj, 'hasBeenPicked') ?? false;
    object.id = IsarNative.jsObjectGet(jsObj, 'id');
    object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'hasBeenPicked':
        return (IsarNative.jsObjectGet(jsObj, 'hasBeenPicked') ?? false) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Picker object) {}
}

class _PickerNativeAdapter extends IsarNativeTypeAdapter<Picker> {
  const _PickerNativeAdapter();

  @override
  void serialize(IsarCollection<Picker> collection, IsarRawObject rawObj,
      Picker object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.hasBeenPicked;
    final _hasBeenPicked = value0;
    final value1 = object.name;
    final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_name.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBool(offsets[0], _hasBeenPicked);
    writer.writeBytes(offsets[1], _name);
  }

  @override
  Picker deserialize(IsarCollection<Picker> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Picker();
    object.hasBeenPicked = reader.readBool(offsets[0]);
    object.id = id;
    object.name = reader.readString(offsets[1]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readBool(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Picker object) {}
}

extension PickerQueryWhereSort on QueryBuilder<Picker, Picker, QWhere> {
  QueryBuilder<Picker, Picker, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension PickerQueryWhere on QueryBuilder<Picker, Picker, QWhereClause> {
  QueryBuilder<Picker, Picker, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterWhereClause> idNotEqualTo(int? id) {
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

  QueryBuilder<Picker, Picker, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterWhereClause> idBetween(
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

extension PickerQueryFilter on QueryBuilder<Picker, Picker, QFilterCondition> {
  QueryBuilder<Picker, Picker, QAfterFilterCondition> hasBeenPickedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hasBeenPicked',
      value: value,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Picker, Picker, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Picker, Picker, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Picker, Picker, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension PickerQueryWhereSortBy on QueryBuilder<Picker, Picker, QSortBy> {
  QueryBuilder<Picker, Picker, QAfterSortBy> sortByHasBeenPicked() {
    return addSortByInternal('hasBeenPicked', Sort.asc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> sortByHasBeenPickedDesc() {
    return addSortByInternal('hasBeenPicked', Sort.desc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension PickerQueryWhereSortThenBy
    on QueryBuilder<Picker, Picker, QSortThenBy> {
  QueryBuilder<Picker, Picker, QAfterSortBy> thenByHasBeenPicked() {
    return addSortByInternal('hasBeenPicked', Sort.asc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> thenByHasBeenPickedDesc() {
    return addSortByInternal('hasBeenPicked', Sort.desc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Picker, Picker, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension PickerQueryWhereDistinct on QueryBuilder<Picker, Picker, QDistinct> {
  QueryBuilder<Picker, Picker, QDistinct> distinctByHasBeenPicked() {
    return addDistinctByInternal('hasBeenPicked');
  }

  QueryBuilder<Picker, Picker, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Picker, Picker, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension PickerQueryProperty on QueryBuilder<Picker, Picker, QQueryProperty> {
  QueryBuilder<Picker, bool, QQueryOperations> hasBeenPickedProperty() {
    return addPropertyNameInternal('hasBeenPicked');
  }

  QueryBuilder<Picker, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Picker, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
