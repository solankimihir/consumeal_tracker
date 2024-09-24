import 'package:consumeal_tracker/database/isar_controller.dart';
import 'package:consumeal_tracker/model/meal_entry.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';

class AddNewMeal extends StatefulWidget {
  const AddNewMeal({super.key, required this.db});
  final Isar db;
  @override
  State<AddNewMeal> createState() => _AddNewMealState();
}

class _AddNewMealState extends State<AddNewMeal> {
  DateTime selectedDate = DateTime.now();
  TextEditingController foodItem = TextEditingController();
  Future<void> selectedDate0(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(1970, 1),
        lastDate: DateTime.now());

    setState(() {
      selectedDate = picked!;
      //print(selectedDate);
    });
  }

  @override
  void dispose() {
    foodItem.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("A D D    E X P E N S E")),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: foodItem,
                decoration: const InputDecoration(
                  hintText: "Name of food item",
                ),
                autofocus: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Selected date : ${DateFormat.yMMMd().format(selectedDate)}"),
                  ElevatedButton(
                    onPressed: () {
                      selectedDate0(context);
                    },
                    child: const Icon(
                      Icons.calendar_month,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  var meal = MealEntry()
                    ..title = foodItem.text
                    ..mealDate = selectedDate
                    ..createdTimeStamp = DateTime.now()
                    ..lastModifiedTimeStamp = DateTime.now();
                  IsarDB().addMeal(isar: widget.db, mealEntry: meal);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeData().colorScheme.primaryContainer,
                    foregroundColor: ThemeData().colorScheme.inverseSurface),
                child: const Text(
                  "Save Meal!",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
