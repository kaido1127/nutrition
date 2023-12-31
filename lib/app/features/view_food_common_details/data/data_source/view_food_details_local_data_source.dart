import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';

part 'view_food_details_local_data_source_impl.dart';

abstract interface class ViewFoodDetailsLocalDataSource{
  Future<FoodCommonLocalData?> getFavoriteFood(String foodName);
  Future<FoodCommonLocalData?> getFood(String foodName);
  Future<void> deleteFavoriteFood(String foodName);
  Future<void> addFood(FoodCommonLocalCompanion foodCommon);
  Future<void> changeFavoriteState(String foodName,bool currentState);

  factory ViewFoodDetailsLocalDataSource.create(AppDatabase appDatabase)
  => _ViewFoodDetailsLocalDataSourceImpl(appDatabase:appDatabase);
}