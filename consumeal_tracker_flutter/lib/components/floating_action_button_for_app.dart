import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloatingActionButtonForApp extends StatelessWidget {
  const FloatingActionButtonForApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          child: Icon(
            Icons.food_bank,
          ),
          label: "Add Meal",
          onTap: () {
            Navigator.pushNamed(context, '/addMeal');
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.post_add),
          label: "Add Items in Master",
          onTap: () {
            Navigator.pushNamed(context, '/addItemsInMaster');
          },
        ),
      ],
    );
  }
}
