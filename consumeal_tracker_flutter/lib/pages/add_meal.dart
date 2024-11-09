import 'package:consumeal_tracker_client/consumeal_tracker_client.dart';
import 'package:flutter/material.dart';

class AddMeal extends StatefulWidget {
  const AddMeal({super.key});

  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  //Text editing controllers for Meal Object
  var mealDateTime = TextEditingController();
  var mealName = TextEditingController();
  var mealRemarks = TextEditingController();

  void saveMeal() {
    Meals meal = Meals(
        datetimestamp: DateTime.now(),
        name: mealName.text,
        remarks: mealRemarks.text);
  }

  //Text editing controllers for Items in a Meal objects
  var itemQuantity = TextEditingController();
  var itemRemarks = TextEditingController();
  var itemCalories = TextEditingController();

  @override
  void dispose() {
    //disposing meal object text editing controllers
    mealDateTime.dispose();
    mealName.dispose();
    mealRemarks.dispose();

    //disposing "items in a meal" object text editing controllers
    itemQuantity.dispose();
    itemRemarks.dispose();
    itemCalories.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Add Meal",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [Text("Add Meal")],
          ),
        ));
  }
}
