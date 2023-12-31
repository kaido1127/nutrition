import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_management_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final allDishProvider = Provider.autoDispose<List<DishTaskEntity>>((ref) {
  List<DishTaskEntity> result = [];

  //Collect dishes from Breakfast,Dinner,Lunch,Snacks into a list
  for (int i = 0; i <= 3; i++) {
    List<DishTaskEntity> listDishOfMeal =
        ref.watch(mealManagementControllerProvider(i)).value ?? [];
    result += listDishOfMeal;
  }
  return result;
});
