part of 'search_foods_repository.dart';

class _SearchFoodsRepositoryImpl implements SearchFoodRepository {
  final SearchFoodsRemoteDataSource _remoteDataSource;
  final SearchFoodsLocalDataSource _localDataSource;

  _SearchFoodsRepositoryImpl(
      {required SearchFoodsRemoteDataSource remoteDataSource,
      required SearchFoodsLocalDataSource localDataSource})
      : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Stream<List<FoodItemEntity>> searchLocal(String query) {
    return _localDataSource.searchFavorites(query).map((listFoodLocal) => listFoodLocal
        .map((foodLocal) => FoodItemEntity.loadFromFoodCommonLocalData(foodLocal))
        .toList());
  }

  //Data from remote source
  @override
  Future<List<FoodItemEntity>> searchRemote(String query, SearchType searchType) async {
    List<FoodItemEntity> result = [];
    final remoteResult = (searchType == SearchType.byText)
        ? await _remoteDataSource.searchByName(query)
        : await _remoteDataSource.searchByBarcode(query);
    for (var food in remoteResult) {
      final newFoodItem = FoodItemEntity(
          foodName: food.foodName,
          subtitle: food.subtitle,
          nfCalories: food.nfCalories,
          photoUrl: food.photoUrl,
          foodType: food.foodType);
      result.add(newFoodItem);
    }
    return result;
  }
}
