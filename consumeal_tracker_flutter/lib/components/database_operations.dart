import 'package:consumeal_tracker_client/consumeal_tracker_client.dart';
import 'package:consumeal_tracker_flutter/main.dart';

class DatabaseOperations {
  void saveMeal(String mealName, String mealRemarks) {
    //Creates a database entry for "meals"
    Meals meal = Meals(
        datetimestamp: DateTime.now(), name: mealName, remarks: mealRemarks);

    client.meals.addMeals(meal);
  }

  void saveItemsInMeal(
      int mealId, int itemID, double quantity, String remarks, int calories) {
    //creates a database entry for one item in a meal
    ItemsInAMeal item = ItemsInAMeal(
        mealIDId: mealId,
        itemIDId: itemID,
        quantity: quantity,
        remarks: remarks,
        calories: calories);
    client.meals.addItems(item);
  }
}
