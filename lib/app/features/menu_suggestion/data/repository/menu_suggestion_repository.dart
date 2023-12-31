import 'package:drift/drift.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/core/data/models/list_food_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/data_source/menu_suggestion_local_data_source.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/data_source/menu_suggestion_remote_data_source.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/menu_suggestion_model.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/food_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/menu_suggestion_entity.dart';

part 'menu_suggestion_repository_impl.dart';

abstract interface class MenuSuggestionRepository {
  Future<MenuSuggestionEntity> getMenuSuggestionResponse(
      double totalCalorieOfDay, String countryName);
  Future<List<MealSuggestionEntity>> getListMenuFromLocalByMealType(MealType mealType);

  Future<void> deleteMenu(int mealId);

  Future<void> saveMenuToLocal(
      {required int createdTime,
      required String name,
      required String note,
      required MealType mealType,
      required List<FoodSuggestionEntity> listFood});

  Future<void> updateMeal(int mealId, String newName, String newNote);


  factory MenuSuggestionRepository.create(MenuSuggestionRemoteDataSource remoteDataSource,
          AIMenuSuggestionLocalDataSource localDataSource) =>
      _MenuSuggestionRepositoryImpl(
          remoteDataSource: remoteDataSource, localDataSource: localDataSource);
}
