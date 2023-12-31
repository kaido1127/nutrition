part of 'meal_management_repository.dart';

class _MealManagementRepositoryImpl implements MealManagementRepository {
  final MealManagementLocalDataSource _localDataSource;

  _MealManagementRepositoryImpl({required MealManagementLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  @override
  Future<void> addDish(DishTaskEntity dishTaskEntity) async {
    try {
      //Map DishTaskEntity to DishCompanion
      final newDish = DishCompanion(
          id: Value.ofNullable(dishTaskEntity.id),
          foodName: Value.ofNullable(dishTaskEntity.foodName),
          mealType: Value.ofNullable(dishTaskEntity.mealType),
          date: Value.ofNullable(dishTaskEntity.dateTime),
          isEaten: Value.ofNullable(dishTaskEntity.isEaten),
          servingQty: Value.ofNullable(dishTaskEntity.servingQty),
          altMeasure: Value.ofNullable(dishTaskEntity.altMeasure));

      await _localDataSource.addDish(newDish);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteDish(int id) async {
    try {
      await _localDataSource.deleteDish(id);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Stream<List<DishTaskEntity>> getListDishDataByMealType(DateTime dateTime, int mealType) {
    try {

      return _localDataSource
          .getListDishDataByMealType(dateTime, mealType) //Return a stream
          .map((event) {
        //event is a List<(DishData,FoodCommonLocalData)>
        return event //e is (DishData,FoodCommonLocalData) ,e.$1 = dishData ,e.$2 = foodCommonLocalData
            .map((e) => DishTaskEntity(
                  id: e.$1.id,
                  foodName: e.$1.foodName,
                  mealType: e.$1.mealType,
                  dateTime: e.$1.date,
                  isEaten: e.$1.isEaten,
                  photo: e.$2.photoUrl,
                  servingQty: e.$1.servingQty,
                  altMeasure: e.$1.altMeasure,
                  nfProtein: e.$2.nfProtein,
                  nfSugars: e.$2.nfSugars,
                  nfTotalCarbohydrate: e.$2.nfTotalCarbohydrate,
                  nfTotalFat: e.$2.nfTotalFat,
                  nfCalories: e.$2.nfCalories,
                  servingWeightGrams: e.$2.servingWeightGrams,
                ))
            .toList();
      });
    } on Exception catch (e) {
      return Stream.error(e);
    }
  }

  @override
  Future<void> updateDish(DishTaskEntity dishTaskEntity) async {
    try {
      //Map DishTaskEntity to DishCompanion
      final updateDish = DishCompanion(
          id: Value.ofNullable(dishTaskEntity.id),
          foodName: Value.ofNullable(dishTaskEntity.foodName),
          mealType: Value.ofNullable(dishTaskEntity.mealType),
          date: Value.ofNullable(dishTaskEntity.dateTime),
          isEaten: Value.ofNullable(dishTaskEntity.isEaten));
      await _localDataSource.updateDish(updateDish);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
