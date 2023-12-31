import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/meal_management/data/data_source/meal_management_data_source_provider.dart';
import 'package:nutritrion/app/features/meal_management/data/repository/meal_management_repository.dart';

final mealManagementRepositoryProvider = Provider.autoDispose<MealManagementRepository>(
    (ref) => MealManagementRepository.create(ref.watch(mealManagementLocalDataSourceProvider)));
