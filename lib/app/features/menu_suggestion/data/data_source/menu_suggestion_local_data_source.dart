import 'package:drift/drift.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';

part 'menu_suggestion_local_data_source_impl.dart';

abstract interface class AIMenuSuggestionLocalDataSource {
  Future<void> insertMeal(MealMenuSuggestionCompanion mealMenuSuggestionCompanion);

  Future<List<MealMenuSuggestionData>> getMenusByMealType(MealType mealType);

  Future<void> deleteMeal(int mealId);

  Future<void> updateMeal(int mealId, String newName, String newNote);

  factory AIMenuSuggestionLocalDataSource.create(AppDatabase localDatabase) =>
      _AIMenuSuggestionLocalDataSourceImpl(localDatabase: localDatabase);
}
