import 'package:drift/drift.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/core/data/local/table/dish.dart';
import 'package:nutritrion/app/features/meal_management/data/data_source/meal_management_local_data_source.dart';
import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';
import 'dart:async';

part 'meal_management_repository_impl.dart';

abstract interface class MealManagementRepository{
  Stream<List<DishTaskEntity>> getListDishDataByMealType(DateTime dateTime,int mealType);
  Future<void> addDish(DishTaskEntity dishTaskEntity);
  Future<void> deleteDish(int id);
  Future<void> updateDish(DishTaskEntity dishTaskEntity);
  //Future<FoodCommonLocalData> getFavoriteFoodByName(String foodName);

  factory MealManagementRepository.create(MealManagementLocalDataSource localDataSource)
  => _MealManagementRepositoryImpl(localDataSource:localDataSource);
}