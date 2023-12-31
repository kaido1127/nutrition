part of 'view_food_details_local_data_source.dart';

class _ViewFoodDetailsLocalDataSourceImpl implements ViewFoodDetailsLocalDataSource {
  final AppDatabase _appDatabase;

  _ViewFoodDetailsLocalDataSourceImpl({required AppDatabase appDatabase})
      : _appDatabase = appDatabase;

  @override
  Future<FoodCommonLocalData?> getFavoriteFood(String foodName) async {
    try {
      final favoriteItem = await (_appDatabase.select(_appDatabase.foodCommonLocal)
            ..where((food) => food.foodName.equals(foodName) & food.isFavoriteFood.equals(true)))
          .getSingle();
      return favoriteItem;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<FoodCommonLocalData?> getFood(String foodName) async {
    try {
      final favoriteItem = await (_appDatabase.select(_appDatabase.foodCommonLocal)
        ..where((food) => food.foodName.equals(foodName)))
          .getSingle();
      return favoriteItem;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> addFood(FoodCommonLocalCompanion food) async {
    try {
      await _appDatabase.into(_appDatabase.foodCommonLocal).insert(food);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteFavoriteFood(String foodName) async {
    try {
      await (_appDatabase.delete(_appDatabase.foodCommonLocal)
            ..where((food) => food.foodName.equals(foodName)))
          .go();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> changeFavoriteState(String foodName,bool currentState) async {
    try {
      await (_appDatabase.update(_appDatabase.foodCommonLocal)
            ..where((food) {
              return food.foodName.equals(foodName);
            }))
          .write(FoodCommonLocalCompanion(isFavoriteFood: Value(!currentState) ));
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
