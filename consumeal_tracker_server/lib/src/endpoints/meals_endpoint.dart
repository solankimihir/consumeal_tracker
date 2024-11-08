import 'package:consumeal_tracker_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class MealsEndpoint extends Endpoint {
  //CRUD for Master Items

  //C R E A T E
  Future<MasterItems> addMasterItems(Session session, MasterItems item) async =>
      await MasterItems.db.insertRow(session, item);

  // R E A D ALL
  Future<List<MasterItems>> readAllMasterItems(Session session) async =>
      await MasterItems.db.find(session);

  // R E A D BY  I D
  Future<MasterItems?> readMasterItem(Session session, int? id) async =>
      await MasterItems.db.findById(session, id!);

  // U P D A T E
  Future<MasterItems> updateMasterItem(
          Session session, MasterItems updatedItem) async =>
      await MasterItems.db.updateRow(session, updatedItem);

  // D E L E T E
  //TODO: Put in safety checks here to confirm that
  //      no record is using this item master before deletion
  Future<MasterItems> deleteMasterItem(
          Session session, MasterItems itemToBeDeleted) async =>
      await MasterItems.db.deleteRow(session, itemToBeDeleted);

  //CRUD for Meal

  //CRUD for Items in a meal
}
