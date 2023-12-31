import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';

//return 5 details of Food from Dish
Map<NutritionDetailType, double> calculateNutritionDetails(DishTaskEntity dishTaskEntity) {
  final unit = dishTaskEntity.altMeasure;
  final selectWeight = unit?.servingWeight ?? 0.0;
  final selectQty = unit?.qty ?? 1.0;
  final rootWeight = dishTaskEntity.servingWeightGrams ?? 1.0;
  final rootQty = int.parse(dishTaskEntity.servingQty.toString());
  final ratio = rootQty * selectWeight / rootWeight / selectQty;

  return {
    NutritionDetailType.calorie: (dishTaskEntity.nfCalories ?? 0) * ratio,
    NutritionDetailType.carb: (dishTaskEntity.nfTotalCarbohydrate ?? 0) * ratio,
    NutritionDetailType.fat: (dishTaskEntity.nfTotalFat ?? 0) * ratio,
    NutritionDetailType.protein: (dishTaskEntity.nfProtein ?? 0) * ratio,
    NutritionDetailType.sugar: (dishTaskEntity.nfSugars ?? 0) * ratio,
  };
}

//Details for a dish
final nutritionDetailsProvider = Provider.autoDispose
    .family<Map<NutritionDetailType, double>, DishTaskEntity>((ref, dishTaskEntity) {
  return calculateNutritionDetails(dishTaskEntity);
});

//Total details for dishes
final totalNutritionDetailsProvider = Provider.autoDispose
    .family<Map<NutritionDetailType, double>, List<DishTaskEntity>>((ref, listDish) {
  if (listDish.isEmpty || listDish == null) {
    return {
      NutritionDetailType.calorie: 0,
      NutritionDetailType.carb: 0,
      NutritionDetailType.fat: 0,
      NutritionDetailType.protein: 0,
      NutritionDetailType.sugar: 0,
    };
  } else {
    final nutritionDetailMap = listDish
        .map((dishTaskEntity) => calculateNutritionDetails(dishTaskEntity))
        .reduce((acc, details) {
      details.forEach((key, value) {
        acc[key] = (acc[key] ?? 0) + value;
      });
      return acc;
    });

    return nutritionDetailMap;
  }
});
