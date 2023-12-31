import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/core/data/models/list_alt_measure.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/data_source/view_food_details_local_data_source.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/data_source/view_food_details_remote_data_source.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';

part 'view_food_details_repository_impl.dart';

abstract interface class ViewFoodDetailsRepository {
  Future<FoodDetailsEntity> getFoodDetailsByName(String query, DataSourceType dataSourceType);
  Future<void> deleteFoodFavorite(String foodName);
  Future<bool> isFavoriteFood(String foodName);
  Future<bool> isLocalFood(String foodName);
  Future<void> addFoodToLocal(FoodDetailsEntity foodCommon);
  Future<void> changeFavoriteState(String foodName,bool currentState);

  factory ViewFoodDetailsRepository.create(
          ViewFoodDetailsRemoteDataSource viewFoodDetailsRemoteDataSource,
          ViewFoodDetailsLocalDataSource viewFoodDetailsLocalDataSource) =>
      _ViewFoodDetailsRepositoryImpl(
          remoteDataSource: viewFoodDetailsRemoteDataSource,
          localDataSource: viewFoodDetailsLocalDataSource);
}
