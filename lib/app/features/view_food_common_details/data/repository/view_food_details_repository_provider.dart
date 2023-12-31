import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/application/dio_instance_provider.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/data_source/view_food_details_data_soucre_provider.dart';

import 'view_food_details_repository.dart';


final viewFoodDetailsRepositoryProvider = Provider.autoDispose<ViewFoodDetailsRepository>((ref) {
  return ViewFoodDetailsRepository.create(ref.watch(viewFoodDetailsRemoteDataSourceProvider),
      ref.watch(viewFoodDetailsLocalDataSourceProvider));
});
