part of 'search_foods_local_data_source.dart';

class _SearchFoodsLocalDataSourceImpl implements SearchFoodsLocalDataSource {
  final AppDatabase _appDatabase;

  _SearchFoodsLocalDataSourceImpl({required AppDatabase appDatabase}) : _appDatabase = appDatabase ;

  @override
  Stream<List<FoodCommonLocalData>> searchFavorites(String query) {
    return (_appDatabase
        .select(_appDatabase.foodCommonLocal)..where((food) => food.foodName.contains(query.toLowerCase())&food.isFavoriteFood.equals(true)))
        .watch();
  }
}
