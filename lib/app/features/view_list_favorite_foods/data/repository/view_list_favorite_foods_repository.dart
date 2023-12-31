import 'dart:async';

import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/shared/domain/food_item_entity.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/data/data_soucre/view_list_favorite_foods_local_data_source.dart';

part 'view_list_favorite_foods_repository_impl.dart';

abstract interface class ViewListFavoriteFoodsRepository{
  Stream<List<FoodItemEntity>> getAllFavoriteFood(String query);
  Future<void> deleteFavoriteFood(String foodName);
  Future<void> clearAllFavoriteFoods();
  void dispose();

  factory ViewListFavoriteFoodsRepository.create(
      ViewListFavoriteFoodsLocalDataSource localDataSource
      ) => _ViewListFavoriteFoodsRepositoryImpl(localDataSource :localDataSource);
}