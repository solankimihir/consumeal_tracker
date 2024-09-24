import 'package:consumeal_tracker/database/isar_controller.dart';
import 'package:consumeal_tracker/model/meal_entry.dart';
import 'package:consumeal_tracker/pages/add_new_meal.dart';
import 'package:consumeal_tracker/widgets/meal_list_item.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.db});
  final Isar db;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MealEntry>? _meals;

  @override
  void initState() {
    super.initState();
    // getMeals();
  }

  void getMeals() {
    _meals = IsarDB().fetchAllMeal(isar: widget.db);
    // txnSync(() => IsarDB().fetchAllMeal(isar: widget.db));
  }

  Widget populateMeals() {
    getMeals();
    if (_meals != null) {
      Expanded listItems = Expanded(
        child: ListView.builder(
          itemCount: _meals!.length,
          itemBuilder: (context, index) {
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) {
                  IsarDB().deleteMeal(isar: widget.db, id: _meals![index].id);
                }
              },
              confirmDismiss: (direction) async {
                return await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        "Confirm",
                      ),
                      content: const Text("Are you sure?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text("Yes"),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text("Cancel"),
                        )
                      ],
                    );
                  },
                );
              },
              background: Container(
                color: ThemeData().colorScheme.errorContainer,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Save",
                  textAlign: TextAlign.left,
                  // style: TextStyle(color: Colors.orange),
                ),
              ),
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                color: ThemeData().colorScheme.onErrorContainer,
                child: const Text(
                  "Delete",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              key: ValueKey<String>(_meals![index].title),
              child: MealListItem(
                meal: _meals![index],
              ),
            );

            //;
          },
        ),
      );
      return listItems;
    } else {
      // print("Mihir - Else Case");
      return const Text("Please add meals");
    }
    //return _meals == null ? emptyContainer : listItems;
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "C O N S U M E A L  T R A C K E R",
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              //          Navigator.pushNamed(context, "/add", ).then((_) => setState(() {}));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddNewMeal(
                            db: widget.db,
                          )));
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {});
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: const Text(
                    "M E A L    E N T R I E S",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            populateMeals(),
          ],
        ),
      ),
    );
  }
}
