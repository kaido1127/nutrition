import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'dart:async';

part 'meal_management_local_data_source_impl.dart';

abstract interface class MealManagementLocalDataSource{
  Stream<List<(DishData,FoodCommonLocalData)>> getListDishDataByMealType(DateTime dateTime,int mealType);
  Future<void> addDish(DishCompanion dishCompanion);
  Future<void> deleteDish(int id);
  Future<void> updateDish(DishCompanion dishCompanion);

  factory MealManagementLocalDataSource.create(AppDatabase appDatabase)
  => _MealManagementLocalDataSourceImpl(appDatabase:appDatabase);
}