part of 'view_list_favorite_foods_repository.dart';

class _ViewListFavoriteFoodsRepositoryImpl implements ViewListFavoriteFoodsRepository {
  final ViewListFavoriteFoodsLocalDataSource _localDataSource;
  late StreamController<List<FoodItemEntity>> _streamController;

  _ViewListFavoriteFoodsRepositoryImpl(
      {required ViewListFavoriteFoodsLocalDataSource localDataSource})
      : _localDataSource = localDataSource {
    _streamController = StreamController<List<FoodItemEntity>>.broadcast();
  }

  @override
  Future<void> clearAllFavoriteFoods() async {
    try {
      await _localDataSource.clearAllFavoriteFoods();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteFavoriteFood(String foodName) async {
    try {
      await _localDataSource.deleteFavoriteFood(foodName);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  Stream<List<FoodItemEntity>> getAllFavoriteFood(String query) {
    return _localDataSource.getFavoriteFoodsByText(query).map((listFoodLocal) => listFoodLocal
        .map((foodLocal) => FoodItemEntity.loadFromFoodCommonLocalData(foodLocal))
        .toList());
  }
}
