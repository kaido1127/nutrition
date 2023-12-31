import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/meal_tab/meal_tab.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/repository/menu_suggestion_repository_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_meal_button_state_controller.g.dart';

@riverpod
class SaveMealButtonStateController extends _$SaveMealButtonStateController {
  @override
  Future<bool> build (MealType mealType) async {
    return false;
  }

  Future<void> saveMenu(
      {required int createdTime,
        required String name,
        required String note,
        required MealSuggestionEntity menuData}) async {

    state = const AsyncLoading();
    ref.read(menuSuggestionRepositoryProvider)
        .saveMenuToLocal(
        createdTime: createdTime,
        name: name,
        note: note,
        mealType: menuData.mealType,
        listFood: menuData.listFood);
    state = const AsyncData(true);
  }
}