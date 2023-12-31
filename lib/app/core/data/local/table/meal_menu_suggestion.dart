import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/table/type_converter/meal_suggestion_entity_converter.dart';

class MealMenuSuggestion extends Table{
  TextColumn get name => text()();
  TextColumn get note => text()();
  IntColumn get createdTime => integer()();//millisecondSinceEpoch
  IntColumn get mealType => integer()();
  TextColumn get listFood => text().map(const ListFoodSuggestionEntityConverter())();

  @override
  Set<Column> get primaryKey => {createdTime};

}