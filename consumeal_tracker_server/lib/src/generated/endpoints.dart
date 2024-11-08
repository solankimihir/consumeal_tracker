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
      },
    );
  }
}
