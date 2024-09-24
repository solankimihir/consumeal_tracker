import 'dart:io';

import 'package:consumeal_tracker/model/meal_entry.dart';
import 'package:consumeal_tracker/pages/add_new_meal.dart';
import 'package:consumeal_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory dir = await getApplicationDocumentsDirectory();
  final Isar isar = await Isar.open(
    [MealEntrySchema],
    directory: dir.path,
  );
  runApp(MyApp(db: isar));
}

class MyApp extends StatelessWidget {
  final Isar db;
  final kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 24, 1, 77),
  );

  MyApp({super.key, required this.db});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme()
              .copyWith(backgroundColor: kColorScheme.primaryContainer)),
      debugShowCheckedModeBanner: false,
      title: 'Consumeal Tracker',
      routes: {
        '/homepage': (context) => HomePage(db: db),
        '/add': (context) => AddNewMeal(db: db),
      },
      home: HomePage(db: db),
    );
  }
}
