import 'package:consumeal_tracker/model/meal_entry.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MealListItem extends StatelessWidget {
  const MealListItem({super.key, required this.meal});
  final MealEntry meal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 80,
//                color: ThemeData().colorScheme.secondaryContainer,
        decoration: BoxDecoration(
          color: ThemeData().colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(meal.title),
            Text(DateFormat.yMMMd().format(meal.mealDate))
          ],
        ),
      ),
    );
  }
}
