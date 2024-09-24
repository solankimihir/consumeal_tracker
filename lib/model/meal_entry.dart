import 'package:isar/isar.dart';

part 'meal_entry.g.dart';

@Collection(accessor: "MealEntries")
class MealEntry {
  Id id = Isar.autoIncrement;
  late String title;
  late DateTime mealDate;
  late DateTime createdTimeStamp;
  late DateTime lastModifiedTimeStamp;
}
