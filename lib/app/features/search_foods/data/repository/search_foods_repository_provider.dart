import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/application/dio_instance_provider.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/search_foods/data/data_sources/search_foods_data_source_provider.dart';
import 'package:nutritrion/app/features/search_foods/data/repository/search_foods_repository.dart';

final searchFoodRepositoryProvider = Provider.autoDispose<SearchFoodRepository>((ref) {
  final searchFoodRepository = SearchFoodRepository.create(
      ref.watch(searchFoodRemoteDataSourceProvider), ref.watch(searchFoodLocalDataSourceProvider));
  return searchFoodRepository;
});
