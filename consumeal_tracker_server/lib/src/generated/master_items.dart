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

abstract class MasterItems implements _i1.TableRow, _i1.ProtocolSerialization {
  MasterItems._({
    this.id,
    required this.name,
    required this.unit,
    required this.calories,
  });

  factory MasterItems({
    int? id,
    required String name,
    required String unit,
    required double calories,
  }) = _MasterItemsImpl;

  factory MasterItems.fromJson(Map<String, dynamic> jsonSerialization) {
    return MasterItems(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      unit: jsonSerialization['unit'] as String,
      calories: (jsonSerialization['calories'] as num).toDouble(),
    );
  }

  static final t = MasterItemsTable();

  static const db = MasterItemsRepository._();

  @override
  int? id;

  String name;

  String unit;

  double calories;

  @override
  _i1.Table get table => t;

  MasterItems copyWith({
    int? id,
    String? name,
    String? unit,
    double? calories,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'unit': unit,
      'calories': calories,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'unit': unit,
      'calories': calories,
    };
  }

  static MasterItemsInclude include() {
    return MasterItemsInclude._();
  }

  static MasterItemsIncludeList includeList({
    _i1.WhereExpressionBuilder<MasterItemsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MasterItemsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MasterItemsTable>? orderByList,
    MasterItemsInclude? include,
  }) {
    return MasterItemsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MasterItems.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MasterItems.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MasterItemsImpl extends MasterItems {
  _MasterItemsImpl({
    int? id,
    required String name,
    required String unit,
    required double calories,
  }) : super._(
          id: id,
          name: name,
          unit: unit,
          calories: calories,
        );

  @override
  MasterItems copyWith({
    Object? id = _Undefined,
    String? name,
    String? unit,
    double? calories,
  }) {
    return MasterItems(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      unit: unit ?? this.unit,
      calories: calories ?? this.calories,
    );
  }
}

class MasterItemsTable extends _i1.Table {
  MasterItemsTable({super.tableRelation}) : super(tableName: 'master_items') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    unit = _i1.ColumnString(
      'unit',
      this,
    );
    calories = _i1.ColumnDouble(
      'calories',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString unit;

  late final _i1.ColumnDouble calories;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        unit,
        calories,
      ];
}

class MasterItemsInclude extends _i1.IncludeObject {
  MasterItemsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => MasterItems.t;
}

class MasterItemsIncludeList extends _i1.IncludeList {
  MasterItemsIncludeList._({
    _i1.WhereExpressionBuilder<MasterItemsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MasterItems.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => MasterItems.t;
}

class MasterItemsRepository {
  const MasterItemsRepository._();

  Future<List<MasterItems>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MasterItemsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MasterItemsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MasterItemsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MasterItems>(
      where: where?.call(MasterItems.t),
      orderBy: orderBy?.call(MasterItems.t),
      orderByList: orderByList?.call(MasterItems.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<MasterItems?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MasterItemsTable>? where,
    int? offset,
    _i1.OrderByBuilder<MasterItemsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MasterItemsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MasterItems>(
      where: where?.call(MasterItems.t),
      orderBy: orderBy?.call(MasterItems.t),
      orderByList: orderByList?.call(MasterItems.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<MasterItems?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MasterItems>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<MasterItems>> insert(
    _i1.Session session,
    List<MasterItems> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MasterItems>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<MasterItems> insertRow(
    _i1.Session session,
    MasterItems row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MasterItems>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<MasterItems>> update(
    _i1.Session session,
    List<MasterItems> rows, {
    _i1.ColumnSelections<MasterItemsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MasterItems>(
      rows,
      columns: columns?.call(MasterItems.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<MasterItems> updateRow(
    _i1.Session session,
    MasterItems row, {
    _i1.ColumnSelections<MasterItemsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MasterItems>(
      row,
      columns: columns?.call(MasterItems.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<MasterItems>> delete(
    _i1.Session session,
    List<MasterItems> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MasterItems>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<MasterItems> deleteRow(
    _i1.Session session,
    MasterItems row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MasterItems>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<MasterItems>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MasterItemsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MasterItems>(
      where: where(MasterItems.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MasterItemsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MasterItems>(
      where: where?.call(MasterItems.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
