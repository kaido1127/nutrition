import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/repository/menu_suggestion_repository_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meal_suggestion_controller.g.dart';

@riverpod
class MealSuggestionController extends _$MealSuggestionController {
  @override
  Future<List<MealSuggestionEntity>> build(MealType mealType) async {
    return ref.read(menuSuggestionRepositoryProvider).getListMenuFromLocalByMealType(mealType);
  }

  void deleteMenu(int mealId) {
    ref.read(menuSuggestionRepositoryProvider).deleteMenu(mealId);
    ref.invalidateSelf();
  }

  void updateMenu(int mealId, String newName, String newNote) {
    ref.read(menuSuggestionRepositoryProvider).updateMeal(mealId, newName, newNote);
    ref.invalidateSelf();
  }
}
