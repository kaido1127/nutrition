import 'package:nutritrion/app/features/meal_management/data/repository/meal_management_repository.dart';
import 'package:nutritrion/app/features/meal_management/data/repository/meal_management_repository_provider.dart';
import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_day_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meal_management_controller.g.dart';

@riverpod
class MealManagementController extends _$MealManagementController {
  @override
  Stream<List<DishTaskEntity>> build(int mealType) {
    return _repository.getListDishDataByMealType(ref.watch(mealDayControllerProvider),mealType);
  }

  MealManagementRepository get _repository => ref.watch(mealManagementRepositoryProvider);

  Future<void> addDish(DishTaskEntity dishTaskEntity) async {
    try {
      state = const AsyncLoading();
      await _repository.addDish(dishTaskEntity);
      ref.invalidateSelf();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Future<void> updateDish(DishTaskEntity dishTaskEntity) async {
    try {
      state = const AsyncLoading();
      await _repository.updateDish(dishTaskEntity);
      ref.invalidateSelf();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Future<void> deleteDish(int id) async {
    try {
      state = const AsyncLoading();
      await _repository.deleteDish(id);
      ref.invalidateSelf();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
