import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/application/dio_instance_provider.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/search_foods/data/data_sources/search_foods_local_data_source.dart';
import 'package:nutritrion/app/features/search_foods/data/data_sources/search_foods_remote_data_source.dart';

final searchFoodLocalDataSourceProvider = Provider.autoDispose<SearchFoodsLocalDataSource>((ref) {
  final searchFoodsLocalDataSource = SearchFoodsLocalDataSource.create(ref.watch(appDatabaseProvider));
  return searchFoodsLocalDataSource;
});

final searchFoodRemoteDataSourceProvider = Provider.autoDispose<SearchFoodsRemoteDataSource>((ref) {

  final result = SearchFoodsRemoteDataSource.create(ref.watch(dioNutritionixInstanceProvider));
  return result;
});
