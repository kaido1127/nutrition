import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_day_provider.dart';

//Create a fake data about food details limit for 4 meals with mealType 0 1 2 3
final limitNutritionDetailsOfMealProvider =
    Provider.autoDispose.family<Map<NutritionDetailType, double>, int>((ref, mealType) {
  Map<NutritionDetailType, double> nutritionDetailMap = {};

  final totalLimitNutritionDetails = ref.watch(limitNutritionDetailsOfDayProvider);
  double ratio = calorieRatioOfMeal(mealType);
  nutritionDetailMap[NutritionDetailType.calorie] =
      (totalLimitNutritionDetails[NutritionDetailType.calorie] ?? 0) * ratio;
  nutritionDetailMap[NutritionDetailType.carb] =
      (totalLimitNutritionDetails[NutritionDetailType.carb] ?? 0) * ratio;
  nutritionDetailMap[NutritionDetailType.fat] =
      (totalLimitNutritionDetails[NutritionDetailType.fat] ?? 0) * ratio;
  nutritionDetailMap[NutritionDetailType.protein] =
      (totalLimitNutritionDetails[NutritionDetailType.protein] ?? 0) * ratio;
  nutritionDetailMap[NutritionDetailType.sugar] =
      (totalLimitNutritionDetails[NutritionDetailType.sugar] ?? 0) * ratio;

  return nutritionDetailMap;
});

double calorieRatioOfMeal(int mealType) {
  switch (mealType) {
    case 0:
      return 0.3;
    case 1:
      return 0.4;
    case 2:
      return 0.25;
    case 3:
      return 0.05;
  }
  return 0;
}
