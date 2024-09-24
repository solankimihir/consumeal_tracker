// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMealEntryCollection on Isar {
  IsarCollection<MealEntry> get MealEntries => this.collection();
}

const MealEntrySchema = CollectionSchema(
  name: r'MealEntry',
  id: 2136597722614945685,
  properties: {
    r'createdTimeStamp': PropertySchema(
      id: 0,
      name: r'createdTimeStamp',
      type: IsarType.dateTime,
    ),
    r'lastModifiedTimeStamp': PropertySchema(
      id: 1,
      name: r'lastModifiedTimeStamp',
      type: IsarType.dateTime,
    ),
    r'mealDate': PropertySchema(
      id: 2,
      name: r'mealDate',
      type: IsarType.dateTime,
    ),
    r'title': PropertySchema(
      id: 3,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _mealEntryEstimateSize,
  serialize: _mealEntrySerialize,
  deserialize: _mealEntryDeserialize,
  deserializeProp: _mealEntryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _mealEntryGetId,
  getLinks: _mealEntryGetLinks,
  attach: _mealEntryAttach,
  version: '3.1.0+1',
);

int _mealEntryEstimateSize(
  MealEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _mealEntrySerialize(
  MealEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdTimeStamp);
  writer.writeDateTime(offsets[1], object.lastModifiedTimeStamp);
  writer.writeDateTime(offsets[2], object.mealDate);
  writer.writeString(offsets[3], object.title);
}

MealEntry _mealEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MealEntry();
  object.createdTimeStamp = reader.readDateTime(offsets[0]);
  object.id = id;
  object.lastModifiedTimeStamp = reader.readDateTime(offsets[1]);
  object.mealDate = reader.readDateTime(offsets[2]);
  object.title = reader.readString(offsets[3]);
  return object;
}

P _mealEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mealEntryGetId(MealEntry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mealEntryGetLinks(MealEntry object) {
  return [];
}

void _mealEntryAttach(IsarCollection<dynamic> col, Id id, MealEntry object) {
  object.id = id;
}

extension MealEntryQueryWhereSort
    on QueryBuilder<MealEntry, MealEntry, QWhere> {
  QueryBuilder<MealEntry, MealEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MealEntryQueryWhere
    on QueryBuilder<MealEntry, MealEntry, QWhereClause> {
  QueryBuilder<MealEntry, MealEntry, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MealEntryQueryFilter
    on QueryBuilder<MealEntry, MealEntry, QFilterCondition> {
  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      createdTimeStampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      createdTimeStampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      createdTimeStampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      createdTimeStampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdTimeStamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      lastModifiedTimeStampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      lastModifiedTimeStampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastModifiedTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      lastModifiedTimeStampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastModifiedTimeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition>
      lastModifiedTimeStampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastModifiedTimeStamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> mealDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mealDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> mealDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mealDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> mealDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mealDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> mealDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mealDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension MealEntryQueryObject
    on QueryBuilder<MealEntry, MealEntry, QFilterCondition> {}

extension MealEntryQueryLinks
    on QueryBuilder<MealEntry, MealEntry, QFilterCondition> {}

extension MealEntryQuerySortBy on QueryBuilder<MealEntry, MealEntry, QSortBy> {
  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> sortByCreatedTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy>
      sortByCreatedTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy>
      sortByLastModifiedTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy>
      sortByLastModifiedTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> sortByMealDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealDate', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> sortByMealDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealDate', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MealEntryQuerySortThenBy
    on QueryBuilder<MealEntry, MealEntry, QSortThenBy> {
  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenByCreatedTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy>
      thenByCreatedTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy>
      thenByLastModifiedTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedTimeStamp', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy>
      thenByLastModifiedTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedTimeStamp', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenByMealDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealDate', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenByMealDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mealDate', Sort.desc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MealEntry, MealEntry, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MealEntryQueryWhereDistinct
    on QueryBuilder<MealEntry, MealEntry, QDistinct> {
  QueryBuilder<MealEntry, MealEntry, QDistinct> distinctByCreatedTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdTimeStamp');
    });
  }

  QueryBuilder<MealEntry, MealEntry, QDistinct>
      distinctByLastModifiedTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedTimeStamp');
    });
  }

  QueryBuilder<MealEntry, MealEntry, QDistinct> distinctByMealDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mealDate');
    });
  }

  QueryBuilder<MealEntry, MealEntry, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension MealEntryQueryProperty
    on QueryBuilder<MealEntry, MealEntry, QQueryProperty> {
  QueryBuilder<MealEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MealEntry, DateTime, QQueryOperations>
      createdTimeStampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdTimeStamp');
    });
  }

  QueryBuilder<MealEntry, DateTime, QQueryOperations>
      lastModifiedTimeStampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedTimeStamp');
    });
  }

  QueryBuilder<MealEntry, DateTime, QQueryOperations> mealDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mealDate');
    });
  }

  QueryBuilder<MealEntry, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
