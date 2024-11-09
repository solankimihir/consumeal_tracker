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

abstract class Meals implements _i1.SerializableModel {
  Meals._({
    this.id,
    required this.datetimestamp,
    required this.name,
    required this.remarks,
  });

  factory Meals({
    int? id,
    required DateTime datetimestamp,
    required String name,
    required String remarks,
  }) = _MealsImpl;

  factory Meals.fromJson(Map<String, dynamic> jsonSerialization) {
    return Meals(
      id: jsonSerialization['id'] as int?,
      datetimestamp: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['datetimestamp']),
      name: jsonSerialization['name'] as String,
      remarks: jsonSerialization['remarks'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime datetimestamp;

  String name;

  String remarks;

  Meals copyWith({
    int? id,
    DateTime? datetimestamp,
    String? name,
    String? remarks,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'datetimestamp': datetimestamp.toJson(),
      'name': name,
      'remarks': remarks,
    };
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
  }) : super._(
          id: id,
          datetimestamp: datetimestamp,
          name: name,
          remarks: remarks,
        );

  @override
  Meals copyWith({
    Object? id = _Undefined,
    DateTime? datetimestamp,
    String? name,
    String? remarks,
  }) {
    return Meals(
      id: id is int? ? id : this.id,
      datetimestamp: datetimestamp ?? this.datetimestamp,
      name: name ?? this.name,
      remarks: remarks ?? this.remarks,
    );
  }
}
