
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/application/dio_instance_provider.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';

import 'view_food_details_local_data_source.dart';
import 'view_food_details_remote_data_source.dart';

final viewFoodDetailsLocalDataSourceProvider = Provider.autoDispose<ViewFoodDetailsLocalDataSource>((ref) {
  return ViewFoodDetailsLocalDataSource.create(ref.watch(appDatabaseProvider));
});

final viewFoodDetailsRemoteDataSourceProvider = Provider.autoDispose<ViewFoodDetailsRemoteDataSource>((ref) {
  return ViewFoodDetailsRemoteDataSource.create(ref.watch(dioNutritionixInstanceProvider));
});