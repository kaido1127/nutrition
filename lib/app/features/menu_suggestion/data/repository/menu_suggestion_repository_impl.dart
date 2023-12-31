part of 'menu_suggestion_repository.dart';

class _MenuSuggestionRepositoryImpl implements MenuSuggestionRepository {
  final MenuSuggestionRemoteDataSource _remoteDataSource;
  final AIMenuSuggestionLocalDataSource _localDataSource;

  _MenuSuggestionRepositoryImpl(
      {required MenuSuggestionRemoteDataSource remoteDataSource,
      required AIMenuSuggestionLocalDataSource localDataSource})
      : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<MenuSuggestionEntity> getMenuSuggestionResponse(
      double totalCalorieOfDay, String countryName) async {
    try {
      final menuModel =
          await _remoteDataSource.getMenuSuggestionResponse(totalCalorieOfDay, countryName);
      return MenuSuggestionEntity.fromMenuSuggestionModel(menuModel);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> saveMenuToLocal(
      {required int createdTime,
      required String name,
      required String note,
      required MealType mealType,
      required List<FoodSuggestionEntity> listFood}) async {
    await _localDataSource.insertMeal(MealMenuSuggestionCompanion(
        name: Value.ofNullable(name),
        createdTime: Value.ofNullable(createdTime),
        note: Value.ofNullable(note),
        mealType: Value.ofNullable(mealTypeToInt(mealType)),
        listFood: Value.ofNullable(ListFoodSuggestionEntity(listFood: listFood))));
  }

  @override
  Future<List<MealSuggestionEntity>> getListMenuFromLocalByMealType(MealType mealType) async {
    try {
      final listMenuFromLocal = await _localDataSource.getMenusByMealType(mealType);

      return listMenuFromLocal.map((menu) => MealSuggestionEntity.fromLocal(menu)).toList();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteMenu(int mealId) async {
    try {
      await _localDataSource.deleteMeal(mealId);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> updateMeal(int mealId, String newName, String newNote) async {
    try {
      await _localDataSource.updateMeal(mealId, newName, newNote);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
