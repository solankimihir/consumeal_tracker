import 'package:consumeal_tracker/model/meal_entry.dart';
import 'package:isar/isar.dart';

class IsarDB {
  void addMeal({required Isar isar, required MealEntry mealEntry}) {
    isar.writeTxn(() => isar.MealEntries.put(mealEntry));
  }

  Future fetchMeal({required Isar isar, required Id id}) async =>
      await isar.MealEntries.get(id);

  void deleteMeal({required Isar isar, required Id id}) {
    isar.writeTxn(() async => isar.MealEntries.delete(id));
  }

  List<MealEntry> fetchAllMeal({required Isar isar}) {
    // var meals =
    //     await isar.txn(() async => await isar.MealEntries.where().findAll());
    // print("Mihir - $meals");
    //return meals;

    return isar.MealEntries.where().findAllSync();
  }
}
