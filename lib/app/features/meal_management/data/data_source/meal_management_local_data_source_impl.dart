part of 'meal_management_local_data_source.dart';

class _MealManagementLocalDataSourceImpl implements MealManagementLocalDataSource {
  final AppDatabase _appDatabase;

  _MealManagementLocalDataSourceImpl({required AppDatabase appDatabase})
      : _appDatabase = appDatabase;

  @override
  Future<void> addDish(DishCompanion dishCompanion) async {
    try {
      await _appDatabase.into(_appDatabase.dish).insert(dishCompanion);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteDish(int id) async {
    try {
      await (_appDatabase.delete(_appDatabase.dish)..where((dish) => dish.id.equals(id))).go();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }


  @override
  Stream<List<(DishData, FoodCommonLocalData)>> getListDishDataByMealType(
      DateTime dateTime, int mealType) {
    try {
      //Select dishes from the local database with dateTime and mealType
      return ((_appDatabase.select(_appDatabase.dish)
            ..where((dish) =>
                dish.mealType.equals(mealType) &
                dish.date.year.equals(dateTime.year) &
                dish.date.month.equals(dateTime.month) &
                dish.date.day.equals(dateTime.day)))
      //Join Dish table with FoodCommonLocal table
          .join([
        innerJoin(_appDatabase.foodCommonLocal,
            _appDatabase.foodCommonLocal.foodName.equalsExp(_appDatabase.dish.foodName))
      ])).watch() //Return a stream
          .map((event) => event
          .map((row) =>
              (row.readTable(_appDatabase.dish), row.readTable(_appDatabase.foodCommonLocal)))
          .toList());
    } on Exception catch (e) {
      return Stream.error(e);
    }
  }

  @override
  Future<void> updateDish(DishCompanion dishCompanion) async {
    try {
      await (_appDatabase.update(_appDatabase.dish)
            ..where((dish) => dish.id.equals(dishCompanion.id.value)))
          .write(DishCompanion(isEaten: Value(!(dishCompanion.isEaten.value))));
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

}
