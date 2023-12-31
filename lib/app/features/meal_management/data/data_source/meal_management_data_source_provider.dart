import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';

import 'meal_management_local_data_source.dart';

final mealManagementLocalDataSourceProvider = Provider.autoDispose<MealManagementLocalDataSource>(
    (ref) => MealManagementLocalDataSource.create(ref.watch(appDatabaseProvider)));
