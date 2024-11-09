import 'package:consumeal_tracker_client/consumeal_tracker_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:consumeal_tracker_flutter/main.dart';

class AddItemsInMaster extends StatefulWidget {
  const AddItemsInMaster({super.key});

  @override
  State<AddItemsInMaster> createState() => _AddItemsInMasterState();
}

class _AddItemsInMasterState extends State<AddItemsInMaster> {
  //Code for text input controllers for Item Master
  /*
    The table in database looks as follows: 

    | ID | name      | Unit | Calories |
    | -- | --------- | ---- | -------- |
    | 1  | SANDWHICH | No.  |          |
    | 2  | Coffee    | Cups |          |
    | 3  | Roti      | No.  |          |
    | 4  | Rice      | Cups |          |

  */

  // Name of item
  TextEditingController nameOfItem = TextEditingController();
  // Units
  TextEditingController unitsForItem = TextEditingController();
  //Calories
  TextEditingController caloriesForItem = TextEditingController();

  void saveItemMaster() {
    //Sanity checks before pushing creating MealItem object:
    //1. Check if nameOfItem is blank?
    if (!(nameOfItem.text.length > 1)) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Name is blank")));
      return;
    }
    //2. Check if unitsForItem is blank?
    if (!(unitsForItem.text.length > 1)) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Units is blank")));
      return;
    }
    //3. Check if Calories is blank? If it is blank then store null
    //   if it is not blank, check if its a number,
    if (caloriesForItem.text.isEmpty) caloriesForItem.text = "0.0";
    var calories = double.tryParse(caloriesForItem.text);
    if (calories == null) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Only numbers are accepted for Calorie")));
      return;
    }

    // all checks complete. We can now create an object of Item Master
    MasterItems newMasterItem = MasterItems(
        name: nameOfItem.text, unit: unitsForItem.text, calories: calories);
    // Adding the newMasterItem to Database
    /* TODO : Need to implement a method to check if the item already exists in the table */
    client.meals.addMasterItems(newMasterItem);
    Navigator.pop(context);
  }

  //Dispose off all Text Editing controllers
  @override
  void dispose() {
    nameOfItem.dispose();
    unitsForItem.dispose();
    caloriesForItem.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Item Master",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Name of Item *"),
              keyboardType: TextInputType.text,
              controller: nameOfItem,
              autofocus: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration:
                  InputDecoration(labelText: "Unit (Nos. / Cups / Pieces) *"),
              keyboardType: TextInputType.text,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.singleLineFormatter
              ],
              controller: unitsForItem,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: "Calories"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                //Allow only digits and dot. [For Double variable type]
                FilteringTextInputFormatter.allow(RegExp("[0-9,.]"))
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: saveItemMaster,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Save"), Icon(Icons.save)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
