/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/meals_endpoint.dart' as _i3;
import 'package:consumeal_tracker_server/src/generated/master_items.dart'
    as _i4;
import 'package:consumeal_tracker_server/src/generated/meals.dart' as _i5;
import 'package:consumeal_tracker_server/src/generated/items_in_a_meal.dart'
    as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'meals': _i3.MealsEndpoint()
        ..initialize(
          server,
          'meals',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['meals'] = _i1.EndpointConnector(
      name: 'meals',
      endpoint: endpoints['meals']!,
      methodConnectors: {
        'addMasterItems': _i1.MethodConnector(
          name: 'addMasterItems',
          params: {
            'item': _i1.ParameterDescription(
              name: 'item',
              type: _i1.getType<_i4.MasterItems>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).addMasterItems(
            session,
            params['item'],
          ),
        ),
        'readAllMasterItems': _i1.MethodConnector(
          name: 'readAllMasterItems',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint)
                  .readAllMasterItems(session),
        ),
        'readMasterItem': _i1.MethodConnector(
          name: 'readMasterItem',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).readMasterItem(
            session,
            params['id'],
          ),
        ),
        'updateMasterItem': _i1.MethodConnector(
          name: 'updateMasterItem',
          params: {
            'updatedItem': _i1.ParameterDescription(
              name: 'updatedItem',
              type: _i1.getType<_i4.MasterItems>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).updateMasterItem(
            session,
            params['updatedItem'],
          ),
        ),
        'deleteMasterItem': _i1.MethodConnector(
          name: 'deleteMasterItem',
          params: {
            'itemToBeDeleted': _i1.ParameterDescription(
              name: 'itemToBeDeleted',
              type: _i1.getType<_i4.MasterItems>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).deleteMasterItem(
            session,
            params['itemToBeDeleted'],
          ),
        ),
        'addMeals': _i1.MethodConnector(
          name: 'addMeals',
          params: {
            'meal': _i1.ParameterDescription(
              name: 'meal',
              type: _i1.getType<_i5.Meals>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).addMeals(
            session,
            params['meal'],
          ),
        ),
        'readAllMeals': _i1.MethodConnector(
          name: 'readAllMeals',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).readAllMeals(session),
        ),
        'readMeal': _i1.MethodConnector(
          name: 'readMeal',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).readMeal(
            session,
            params['id'],
          ),
        ),
        'updateMeal': _i1.MethodConnector(
          name: 'updateMeal',
          params: {
            'meal': _i1.ParameterDescription(
              name: 'meal',
              type: _i1.getType<_i5.Meals>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).updateMeal(
            session,
            params['meal'],
          ),
        ),
        'deleteMeal': _i1.MethodConnector(
          name: 'deleteMeal',
          params: {
            'meal': _i1.ParameterDescription(
              name: 'meal',
              type: _i1.getType<_i5.Meals>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).deleteMeal(
            session,
            params['meal'],
          ),
        ),
        'addItems': _i1.MethodConnector(
          name: 'addItems',
          params: {
            'item': _i1.ParameterDescription(
              name: 'item',
              type: _i1.getType<_i6.ItemsInAMeal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).addItems(
            session,
            params['item'],
          ),
        ),
        'readAllItemsInAMeal': _i1.MethodConnector(
          name: 'readAllItemsInAMeal',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).readAllItemsInAMeal(
            session,
            params['id'],
          ),
        ),
        'updateItemsInAMeal': _i1.MethodConnector(
          name: 'updateItemsInAMeal',
          params: {
            'items': _i1.ParameterDescription(
              name: 'items',
              type: _i1.getType<_i6.ItemsInAMeal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).updateItemsInAMeal(
            session,
            params['items'],
          ),
        ),
        'deleteItemInAMeal': _i1.MethodConnector(
          name: 'deleteItemInAMeal',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['meals'] as _i3.MealsEndpoint).deleteItemInAMeal(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
