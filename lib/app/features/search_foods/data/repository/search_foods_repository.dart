import 'dart:async';

import 'package:dio/dio.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/common/search_type.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/features/search_foods/data/data_sources/search_foods_local_data_source.dart';
import 'package:nutritrion/app/features/search_foods/data/data_sources/search_foods_remote_data_source.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_all.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';
import 'package:nutritrion/app/shared/domain/food_item_entity.dart';

part 'searchs_food_repository_impl.dart';

abstract interface class SearchFoodRepository {
  Future<List<FoodItemEntity>> searchRemote(String query,SearchType searchType);
  Stream<List<FoodItemEntity>> searchLocal(String query);

  factory SearchFoodRepository.create(
  SearchFoodsRemoteDataSource searchFoodsRemoteDataSource,
      SearchFoodsLocalDataSource searchFoodsLocalDataSource) =>
      _SearchFoodsRepositoryImpl(
        remoteDataSource: searchFoodsRemoteDataSource,
        localDataSource: searchFoodsLocalDataSource,
      );
}
