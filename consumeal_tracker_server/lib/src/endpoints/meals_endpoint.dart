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
  // C R E A T E
  Future<Meals> addMeals(Session session, Meals meal) async =>
      await Meals.db.insertRow(session, meal);

  // R E A D ALL
  Future<List<Meals>> readAllMeals(Session session) async =>
      await Meals.db.find(session);
  // R E A D BY I D
  Future<Meals?> readMeal(Session session, int? id) async =>
      await Meals.db.findById(session, id!);
  // U P D A T E
  Future<Meals> updateMeal(Session session, Meals meal) async =>
      await Meals.db.updateRow(session, meal);
  // D E L E T E
  //TODO: Put in safety checks here to confirm that
  //      no record is using this item master before deletion
  Future<Meals> deleteMeal(Session session, Meals meal) async =>
      await Meals.db.deleteRow(session, meal);

  //CRUD for Items in a meal
  // C R E A T E
  Future<ItemsInAMeal> addItems(Session session, ItemsInAMeal item) async =>
      await ItemsInAMeal.db.insertRow(session, item);

  // R E A D ALL items in a meal
  Future<List<ItemsInAMeal>> readAllItemsInAMeal(
          Session session, int id) async =>
      await ItemsInAMeal.db
          .find(session, where: (p0) => p0.mealID.id.equals(id));
  // U P D A T E
  Future<ItemsInAMeal> updateItemsInAMeal(
          Session session, ItemsInAMeal items) async =>
      await ItemsInAMeal.db.updateRow(session, items);
  // D E L E T E one Item in a meal
  //TODO: Put in safety checks here to confirm that
  //      no record is using this item master before deletion
  Future<List<ItemsInAMeal>> deleteItemInAMeal(Session session, int id) async =>
      await ItemsInAMeal.db
          .deleteWhere(session, where: (p0) => p0.itemID.id.equals(id));
}
