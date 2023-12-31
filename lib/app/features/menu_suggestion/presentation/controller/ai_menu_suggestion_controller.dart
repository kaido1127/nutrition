import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/meal_tab/meal_tab.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/repository/menu_suggestion_repository_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/menu_suggestion_entity.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_day_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/controller/save_meal_button_state_controller.dart';
import 'package:nutritrion/app/features/user_management/presentation/controller/user_information_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_menu_suggestion_controller.g.dart';

@riverpod
class AIMenuSuggestionController extends _$AIMenuSuggestionController {
  @override
  Future<MenuSuggestionEntity> build() async {
    final double totalCalorieOfDay =
        ref.read(limitNutritionDetailsOfDayProvider)[NutritionDetailType.calorie] ?? 0;
    final country = ref.watch(userInformationControllerProvider).value?.country;
    print("[AIMenuController] Country $country");
    return ref
        .read(menuSuggestionRepositoryProvider)
        .getMenuSuggestionResponse(totalCalorieOfDay, country!.name);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();

    // MealType.values.map((mealType) => ref
    //     .read(saveMealButtonStateControllerProvider(mealType).notifier)
    //     .state = const AsyncData(false));

    final double totalCalorieOfDay =
        ref.read(limitNutritionDetailsOfDayProvider)[NutritionDetailType.calorie] ?? 0;
    final country = ref.read(userInformationControllerProvider).value?.country;

    try {
      ref
          .read(menuSuggestionRepositoryProvider)
          .getMenuSuggestionResponse(totalCalorieOfDay, country!.name)
          .then((value) => state = AsyncData(value));
    } on Exception catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
