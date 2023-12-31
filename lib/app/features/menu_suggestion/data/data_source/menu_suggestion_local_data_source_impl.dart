part of 'menu_suggestion_local_data_source.dart';

class _AIMenuSuggestionLocalDataSourceImpl implements AIMenuSuggestionLocalDataSource {
  final AppDatabase _localDatabase;

  _AIMenuSuggestionLocalDataSourceImpl({required AppDatabase localDatabase})
      : _localDatabase = localDatabase;

  @override
  Future<void> insertMeal(MealMenuSuggestionCompanion mealMenuSuggestionCompanion) async {
    try {
      await _localDatabase
          .into(_localDatabase.mealMenuSuggestion)
          .insert(mealMenuSuggestionCompanion);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> updateMeal(int mealId, String newName, String newNote) async {
    try {
      await (_localDatabase.update(_localDatabase.mealMenuSuggestion)
            ..where((meal) {
              return meal.createdTime.equals(mealId);
            }))
          .write(MealMenuSuggestionCompanion(name: Value(newName), note: Value(newNote)));
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    try {
      await (_localDatabase.delete(_localDatabase.mealMenuSuggestion)
            ..where((meal) => meal.createdTime.equals(mealId)))
          .go();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<List<MealMenuSuggestionData>> getMenusByMealType(MealType mealType) async {
    try {
      return ((_localDatabase.select(_localDatabase.mealMenuSuggestion)..where((menu) => menu.mealType.equals(mealTypeToInt(mealType))))
            ..orderBy(
                [(menu) => OrderingTerm(expression: menu.createdTime, mode: OrderingMode.desc)]))
          .get();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
