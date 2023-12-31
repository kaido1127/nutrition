part of 'view_list_favorite_foods_local_data_source.dart';

class _ViewListFavoriteFoodsLocalDataSourceImpl implements ViewListFavoriteFoodsLocalDataSource {
  final AppDatabase _appDatabase;

  _ViewListFavoriteFoodsLocalDataSourceImpl({required AppDatabase appDatabase})
      : _appDatabase = appDatabase;

  @override
  Future<void> clearAllFavoriteFoods() async {
    try {
      await (_appDatabase.delete(_appDatabase.foodCommonLocal)).go();
      print("clear all food db");
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
      print("delete food db");
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Stream<List<FoodCommonLocalData>> getFavoriteFoodsByText(String query) {
    try {
      if (query.isEmpty) {
        return (_appDatabase.select(_appDatabase.foodCommonLocal)..where((food) => food.isFavoriteFood.equals(true))).watch();
      } else {
        return (_appDatabase.select(_appDatabase.foodCommonLocal)
              ..where((food) => food.foodName.contains(query.toLowerCase())&food.isFavoriteFood.equals(true)))
            .watch();
      }
    } on Exception catch (e) {
      return Stream.error(e);
    }
  }
}
