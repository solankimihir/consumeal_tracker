/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class ItemsInAMeal implements _i1.SerializableModel {
  ItemsInAMeal._({
    this.id,
    required this.mealIDId,
    this.mealID,
    required this.itemIDId,
    this.itemID,
    required this.quantity,
    required this.remarks,
    required this.calories,
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
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int mealIDId;

  _i2.Meals? mealID;

  int itemIDId;

  _i2.MasterItems? itemID;

  double quantity;

  String remarks;

  int calories;

  ItemsInAMeal copyWith({
    int? id,
    int? mealIDId,
    _i2.Meals? mealID,
    int? itemIDId,
    _i2.MasterItems? itemID,
    double? quantity,
    String? remarks,
    int? calories,
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
    };
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
  }) : super._(
          id: id,
          mealIDId: mealIDId,
          mealID: mealID,
          itemIDId: itemIDId,
          itemID: itemID,
          quantity: quantity,
          remarks: remarks,
          calories: calories,
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
    );
  }
}
