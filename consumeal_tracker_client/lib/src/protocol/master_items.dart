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

abstract class MasterItems implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String unit;

  double calories;

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
