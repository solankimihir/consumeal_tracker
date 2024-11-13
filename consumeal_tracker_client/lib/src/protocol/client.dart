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
import 'dart:async' as _i2;
import 'package:consumeal_tracker_client/src/protocol/master_items.dart' as _i3;
import 'package:consumeal_tracker_client/src/protocol/meals.dart' as _i4;
import 'package:consumeal_tracker_client/src/protocol/items_in_a_meal.dart'
    as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointMeals extends _i1.EndpointRef {
  EndpointMeals(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'meals';

  _i2.Future<_i3.MasterItems> addMasterItems(_i3.MasterItems item) =>
      caller.callServerEndpoint<_i3.MasterItems>(
        'meals',
        'addMasterItems',
        {'item': item},
      );

  _i2.Future<List<_i3.MasterItems>> readAllMasterItems() =>
      caller.callServerEndpoint<List<_i3.MasterItems>>(
        'meals',
        'readAllMasterItems',
        {},
      );

  _i2.Future<_i3.MasterItems?> readMasterItem(int? id) =>
      caller.callServerEndpoint<_i3.MasterItems?>(
        'meals',
        'readMasterItem',
        {'id': id},
      );

  _i2.Future<_i3.MasterItems> updateMasterItem(_i3.MasterItems updatedItem) =>
      caller.callServerEndpoint<_i3.MasterItems>(
        'meals',
        'updateMasterItem',
        {'updatedItem': updatedItem},
      );

  _i2.Future<_i3.MasterItems> deleteMasterItem(
          _i3.MasterItems itemToBeDeleted) =>
      caller.callServerEndpoint<_i3.MasterItems>(
        'meals',
        'deleteMasterItem',
        {'itemToBeDeleted': itemToBeDeleted},
      );

  _i2.Future<_i4.Meals> addMeals(_i4.Meals meal) =>
      caller.callServerEndpoint<_i4.Meals>(
        'meals',
        'addMeals',
        {'meal': meal},
      );

  _i2.Future<List<_i4.Meals>> readAllMeals() =>
      caller.callServerEndpoint<List<_i4.Meals>>(
        'meals',
        'readAllMeals',
        {},
      );

  _i2.Future<_i4.Meals?> readMeal(int? id) =>
      caller.callServerEndpoint<_i4.Meals?>(
        'meals',
        'readMeal',
        {'id': id},
      );

  _i2.Future<_i4.Meals> updateMeal(_i4.Meals meal) =>
      caller.callServerEndpoint<_i4.Meals>(
        'meals',
        'updateMeal',
        {'meal': meal},
      );

  _i2.Future<_i4.Meals> deleteMeal(_i4.Meals meal) =>
      caller.callServerEndpoint<_i4.Meals>(
        'meals',
        'deleteMeal',
        {'meal': meal},
      );

  _i2.Future<_i5.ItemsInAMeal> addItems(_i5.ItemsInAMeal item) =>
      caller.callServerEndpoint<_i5.ItemsInAMeal>(
        'meals',
        'addItems',
        {'item': item},
      );

  _i2.Future<List<_i5.ItemsInAMeal>> readAllItemsInAMeal(int id) =>
      caller.callServerEndpoint<List<_i5.ItemsInAMeal>>(
        'meals',
        'readAllItemsInAMeal',
        {'id': id},
      );

  _i2.Future<_i5.ItemsInAMeal> updateItemsInAMeal(_i5.ItemsInAMeal items) =>
      caller.callServerEndpoint<_i5.ItemsInAMeal>(
        'meals',
        'updateItemsInAMeal',
        {'items': items},
      );

  _i2.Future<List<_i5.ItemsInAMeal>> deleteItemInAMeal(int id) =>
      caller.callServerEndpoint<List<_i5.ItemsInAMeal>>(
        'meals',
        'deleteItemInAMeal',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    example = EndpointExample(this);
    meals = EndpointMeals(this);
  }

  late final EndpointExample example;

  late final EndpointMeals meals;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'meals': meals,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
