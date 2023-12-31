import 'dart:async';
import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';

part 'view_list_favorite_foods_local_data_source_impl.dart';

abstract interface class ViewListFavoriteFoodsLocalDataSource{
  Stream<List<FoodCommonLocalData>> getFavoriteFoodsByText(String query);
  Future<void> deleteFavoriteFood(String foodName);
  Future<void> clearAllFavoriteFoods();

  factory ViewListFavoriteFoodsLocalDataSource.create(AppDatabase appDatabase)
  => _ViewListFavoriteFoodsLocalDataSourceImpl(appDatabase: appDatabase);
}