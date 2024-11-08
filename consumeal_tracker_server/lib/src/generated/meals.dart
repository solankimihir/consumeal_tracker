/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Meals implements _i1.TableRow, _i1.ProtocolSerialization {
  Meals._({
    this.id,
    required this.datetimestamp,
    required this.name,
    required this.remarks,
    required this.tag,
  });

  factory Meals({
    int? id,
    required DateTime datetimestamp,
    required String name,
    required String remarks,
    required List<String> tag,
  }) = _MealsImpl;

  factory Meals.fromJson(Map<String, dynamic> jsonSerialization) {
    return Meals(
      id: jsonSerialization['id'] as int?,
      datetimestamp: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['datetimestamp']),
      name: jsonSerialization['name'] as String,
      remarks: jsonSerialization['remarks'] as String,
      tag: (jsonSerialization['tag'] as List).map((e) => e as String).toList(),
    );
  }

  static final t = MealsTable();

  static const db = MealsRepository._();

  @override
  int? id;

  DateTime datetimestamp;

  String name;

  String remarks;

  List<String> tag;

  @override
  _i1.Table get table => t;

  Meals copyWith({
    int? id,
    DateTime? datetimestamp,
    String? name,
    String? remarks,
    List<String>? tag,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'datetimestamp': datetimestamp.toJson(),
      'name': name,
      'remarks': remarks,
      'tag': tag.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'datetimestamp': datetimestamp.toJson(),
      'name': name,
      'remarks': remarks,
      'tag': tag.toJson(),
    };
  }

  static MealsInclude include() {
    return MealsInclude._();
  }

  static MealsIncludeList includeList({
    _i1.WhereExpressionBuilder<MealsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MealsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MealsTable>? orderByList,
    MealsInclude? include,
  }) {
    return MealsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Meals.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Meals.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MealsImpl extends Meals {
  _MealsImpl({
    int? id,
    required DateTime datetimestamp,
    required String name,
    required String remarks,
    required List<String> tag,
  }) : super._(
          id: id,
          datetimestamp: datetimestamp,
          name: name,
          remarks: remarks,
          tag: tag,
        );

  @override
  Meals copyWith({
    Object? id = _Undefined,
    DateTime? datetimestamp,
    String? name,
    String? remarks,
    List<String>? tag,
  }) {
    return Meals(
      id: id is int? ? id : this.id,
      datetimestamp: datetimestamp ?? this.datetimestamp,
      name: name ?? this.name,
      remarks: remarks ?? this.remarks,
      tag: tag ?? this.tag.map((e0) => e0).toList(),
    );
  }
}

class MealsTable extends _i1.Table {
  MealsTable({super.tableRelation}) : super(tableName: 'meals') {
    datetimestamp = _i1.ColumnDateTime(
      'datetimestamp',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    remarks = _i1.ColumnString(
      'remarks',
      this,
    );
    tag = _i1.ColumnSerializable(
      'tag',
      this,
    );
  }

  late final _i1.ColumnDateTime datetimestamp;

  late final _i1.ColumnString name;

  late final _i1.ColumnString remarks;

  late final _i1.ColumnSerializable tag;

  @override
  List<_i1.Column> get columns => [
        id,
        datetimestamp,
        name,
        remarks,
        tag,
      ];
}

class MealsInclude extends _i1.IncludeObject {
  MealsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Meals.t;
}

class MealsIncludeList extends _i1.IncludeList {
  MealsIncludeList._({
    _i1.WhereExpressionBuilder<MealsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Meals.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Meals.t;
}

class MealsRepository {
  const MealsRepository._();

  Future<List<Meals>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MealsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MealsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MealsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Meals>(
      where: where?.call(Meals.t),
      orderBy: orderBy?.call(Meals.t),
      orderByList: orderByList?.call(Meals.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Meals?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MealsTable>? where,
    int? offset,
    _i1.OrderByBuilder<MealsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MealsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Meals>(
      where: where?.call(Meals.t),
      orderBy: orderBy?.call(Meals.t),
      orderByList: orderByList?.call(Meals.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Meals?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Meals>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Meals>> insert(
    _i1.Session session,
    List<Meals> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Meals>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Meals> insertRow(
    _i1.Session session,
    Meals row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Meals>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Meals>> update(
    _i1.Session session,
    List<Meals> rows, {
    _i1.ColumnSelections<MealsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Meals>(
      rows,
      columns: columns?.call(Meals.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Meals> updateRow(
    _i1.Session session,
    Meals row, {
    _i1.ColumnSelections<MealsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Meals>(
      row,
      columns: columns?.call(Meals.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Meals>> delete(
    _i1.Session session,
    List<Meals> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Meals>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Meals> deleteRow(
    _i1.Session session,
    Meals row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Meals>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Meals>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MealsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Meals>(
      where: where(Meals.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MealsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Meals>(
      where: where?.call(Meals.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
