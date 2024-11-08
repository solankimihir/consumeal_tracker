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
import 'protocol.dart' as _i2;

abstract class ItemsInAMeal implements _i1.TableRow, _i1.ProtocolSerialization {
  ItemsInAMeal._({
    this.id,
    required this.mealIDId,
    this.mealID,
    required this.itemIDId,
    this.itemID,
    required this.quantity,
    required this.remarks,
    required this.calories,
    required this.tags,
  });

  factory ItemsInAMeal({
    int? id,
    required int mealIDId,
    _i2.Meals? mealID,
    required int itemIDId,
    _i2.MasterItems? itemID,
    required double quantity,
    required String remarks,
    required int calories,
    required List<String> tags,
  }) = _ItemsInAMealImpl;

  factory ItemsInAMeal.fromJson(Map<String, dynamic> jsonSerialization) {
    return ItemsInAMeal(
      id: jsonSerialization['id'] as int?,
      mealIDId: jsonSerialization['mealIDId'] as int,
      mealID: jsonSerialization['mealID'] == null
          ? null
          : _i2.Meals.fromJson(
              (jsonSerialization['mealID'] as Map<String, dynamic>)),
      itemIDId: jsonSerialization['itemIDId'] as int,
      itemID: jsonSerialization['itemID'] == null
          ? null
          : _i2.MasterItems.fromJson(
              (jsonSerialization['itemID'] as Map<String, dynamic>)),
      quantity: (jsonSerialization['quantity'] as num).toDouble(),
      remarks: jsonSerialization['remarks'] as String,
      calories: jsonSerialization['calories'] as int,
      tags:
          (jsonSerialization['tags'] as List).map((e) => e as String).toList(),
    );
  }

  static final t = ItemsInAMealTable();

  static const db = ItemsInAMealRepository._();

  @override
  int? id;

  int mealIDId;

  _i2.Meals? mealID;

  int itemIDId;

  _i2.MasterItems? itemID;

  double quantity;

  String remarks;

  int calories;

  List<String> tags;

  @override
  _i1.Table get table => t;

  ItemsInAMeal copyWith({
    int? id,
    int? mealIDId,
    _i2.Meals? mealID,
    int? itemIDId,
    _i2.MasterItems? itemID,
    double? quantity,
    String? remarks,
    int? calories,
    List<String>? tags,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'mealIDId': mealIDId,
      if (mealID != null) 'mealID': mealID?.toJson(),
      'itemIDId': itemIDId,
      if (itemID != null) 'itemID': itemID?.toJson(),
      'quantity': quantity,
      'remarks': remarks,
      'calories': calories,
      'tags': tags.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'mealIDId': mealIDId,
      if (mealID != null) 'mealID': mealID?.toJsonForProtocol(),
      'itemIDId': itemIDId,
      if (itemID != null) 'itemID': itemID?.toJsonForProtocol(),
      'quantity': quantity,
      'remarks': remarks,
      'calories': calories,
      'tags': tags.toJson(),
    };
  }

  static ItemsInAMealInclude include({
    _i2.MealsInclude? mealID,
    _i2.MasterItemsInclude? itemID,
  }) {
    return ItemsInAMealInclude._(
      mealID: mealID,
      itemID: itemID,
    );
  }

  static ItemsInAMealIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemsInAMealTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemsInAMealTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemsInAMealTable>? orderByList,
    ItemsInAMealInclude? include,
  }) {
    return ItemsInAMealIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ItemsInAMeal.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ItemsInAMeal.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ItemsInAMealImpl extends ItemsInAMeal {
  _ItemsInAMealImpl({
    int? id,
    required int mealIDId,
    _i2.Meals? mealID,
    required int itemIDId,
    _i2.MasterItems? itemID,
    required double quantity,
    required String remarks,
    required int calories,
    required List<String> tags,
  }) : super._(
          id: id,
          mealIDId: mealIDId,
          mealID: mealID,
          itemIDId: itemIDId,
          itemID: itemID,
          quantity: quantity,
          remarks: remarks,
          calories: calories,
          tags: tags,
        );

  @override
  ItemsInAMeal copyWith({
    Object? id = _Undefined,
    int? mealIDId,
    Object? mealID = _Undefined,
    int? itemIDId,
    Object? itemID = _Undefined,
    double? quantity,
    String? remarks,
    int? calories,
    List<String>? tags,
  }) {
    return ItemsInAMeal(
      id: id is int? ? id : this.id,
      mealIDId: mealIDId ?? this.mealIDId,
      mealID: mealID is _i2.Meals? ? mealID : this.mealID?.copyWith(),
      itemIDId: itemIDId ?? this.itemIDId,
      itemID: itemID is _i2.MasterItems? ? itemID : this.itemID?.copyWith(),
      quantity: quantity ?? this.quantity,
      remarks: remarks ?? this.remarks,
      calories: calories ?? this.calories,
      tags: tags ?? this.tags.map((e0) => e0).toList(),
    );
  }
}

class ItemsInAMealTable extends _i1.Table {
  ItemsInAMealTable({super.tableRelation})
      : super(tableName: 'items_in_a_meal') {
    mealIDId = _i1.ColumnInt(
      'mealIDId',
      this,
    );
    itemIDId = _i1.ColumnInt(
      'itemIDId',
      this,
    );
    quantity = _i1.ColumnDouble(
      'quantity',
      this,
    );
    remarks = _i1.ColumnString(
      'remarks',
      this,
    );
    calories = _i1.ColumnInt(
      'calories',
      this,
    );
    tags = _i1.ColumnSerializable(
      'tags',
      this,
    );
  }

  late final _i1.ColumnInt mealIDId;

  _i2.MealsTable? _mealID;

  late final _i1.ColumnInt itemIDId;

  _i2.MasterItemsTable? _itemID;

  late final _i1.ColumnDouble quantity;

  late final _i1.ColumnString remarks;

  late final _i1.ColumnInt calories;

  late final _i1.ColumnSerializable tags;

  _i2.MealsTable get mealID {
    if (_mealID != null) return _mealID!;
    _mealID = _i1.createRelationTable(
      relationFieldName: 'mealID',
      field: ItemsInAMeal.t.mealIDId,
      foreignField: _i2.Meals.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MealsTable(tableRelation: foreignTableRelation),
    );
    return _mealID!;
  }

  _i2.MasterItemsTable get itemID {
    if (_itemID != null) return _itemID!;
    _itemID = _i1.createRelationTable(
      relationFieldName: 'itemID',
      field: ItemsInAMeal.t.itemIDId,
      foreignField: _i2.MasterItems.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.MasterItemsTable(tableRelation: foreignTableRelation),
    );
    return _itemID!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        mealIDId,
        itemIDId,
        quantity,
        remarks,
        calories,
        tags,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'mealID') {
      return mealID;
    }
    if (relationField == 'itemID') {
      return itemID;
    }
    return null;
  }
}

class ItemsInAMealInclude extends _i1.IncludeObject {
  ItemsInAMealInclude._({
    _i2.MealsInclude? mealID,
    _i2.MasterItemsInclude? itemID,
  }) {
    _mealID = mealID;
    _itemID = itemID;
  }

  _i2.MealsInclude? _mealID;

  _i2.MasterItemsInclude? _itemID;

  @override
  Map<String, _i1.Include?> get includes => {
        'mealID': _mealID,
        'itemID': _itemID,
      };

  @override
  _i1.Table get table => ItemsInAMeal.t;
}

class ItemsInAMealIncludeList extends _i1.IncludeList {
  ItemsInAMealIncludeList._({
    _i1.WhereExpressionBuilder<ItemsInAMealTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ItemsInAMeal.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ItemsInAMeal.t;
}

class ItemsInAMealRepository {
  const ItemsInAMealRepository._();

  final attachRow = const ItemsInAMealAttachRowRepository._();

  Future<List<ItemsInAMeal>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemsInAMealTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemsInAMealTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemsInAMealTable>? orderByList,
    _i1.Transaction? transaction,
    ItemsInAMealInclude? include,
  }) async {
    return session.db.find<ItemsInAMeal>(
      where: where?.call(ItemsInAMeal.t),
      orderBy: orderBy?.call(ItemsInAMeal.t),
      orderByList: orderByList?.call(ItemsInAMeal.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<ItemsInAMeal?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemsInAMealTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemsInAMealTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemsInAMealTable>? orderByList,
    _i1.Transaction? transaction,
    ItemsInAMealInclude? include,
  }) async {
    return session.db.findFirstRow<ItemsInAMeal>(
      where: where?.call(ItemsInAMeal.t),
      orderBy: orderBy?.call(ItemsInAMeal.t),
      orderByList: orderByList?.call(ItemsInAMeal.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<ItemsInAMeal?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ItemsInAMealInclude? include,
  }) async {
    return session.db.findById<ItemsInAMeal>(
      id,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<List<ItemsInAMeal>> insert(
    _i1.Session session,
    List<ItemsInAMeal> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ItemsInAMeal>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<ItemsInAMeal> insertRow(
    _i1.Session session,
    ItemsInAMeal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ItemsInAMeal>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<ItemsInAMeal>> update(
    _i1.Session session,
    List<ItemsInAMeal> rows, {
    _i1.ColumnSelections<ItemsInAMealTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ItemsInAMeal>(
      rows,
      columns: columns?.call(ItemsInAMeal.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<ItemsInAMeal> updateRow(
    _i1.Session session,
    ItemsInAMeal row, {
    _i1.ColumnSelections<ItemsInAMealTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ItemsInAMeal>(
      row,
      columns: columns?.call(ItemsInAMeal.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<ItemsInAMeal>> delete(
    _i1.Session session,
    List<ItemsInAMeal> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ItemsInAMeal>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<ItemsInAMeal> deleteRow(
    _i1.Session session,
    ItemsInAMeal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ItemsInAMeal>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<ItemsInAMeal>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemsInAMealTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ItemsInAMeal>(
      where: where(ItemsInAMeal.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemsInAMealTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ItemsInAMeal>(
      where: where?.call(ItemsInAMeal.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}

class ItemsInAMealAttachRowRepository {
  const ItemsInAMealAttachRowRepository._();

  Future<void> mealID(
    _i1.Session session,
    ItemsInAMeal itemsInAMeal,
    _i2.Meals mealID, {
    _i1.Transaction? transaction,
  }) async {
    if (itemsInAMeal.id == null) {
      throw ArgumentError.notNull('itemsInAMeal.id');
    }
    if (mealID.id == null) {
      throw ArgumentError.notNull('mealID.id');
    }

    var $itemsInAMeal = itemsInAMeal.copyWith(mealIDId: mealID.id);
    await session.db.updateRow<ItemsInAMeal>(
      $itemsInAMeal,
      columns: [ItemsInAMeal.t.mealIDId],
      transaction: transaction ?? session.transaction,
    );
  }

  Future<void> itemID(
    _i1.Session session,
    ItemsInAMeal itemsInAMeal,
    _i2.MasterItems itemID, {
    _i1.Transaction? transaction,
  }) async {
    if (itemsInAMeal.id == null) {
      throw ArgumentError.notNull('itemsInAMeal.id');
    }
    if (itemID.id == null) {
      throw ArgumentError.notNull('itemID.id');
    }

    var $itemsInAMeal = itemsInAMeal.copyWith(itemIDId: itemID.id);
    await session.db.updateRow<ItemsInAMeal>(
      $itemsInAMeal,
      columns: [ItemsInAMeal.t.itemIDId],
      transaction: transaction ?? session.transaction,
    );
  }
}
