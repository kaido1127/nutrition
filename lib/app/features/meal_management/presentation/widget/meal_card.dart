import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_meal_provider.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_management_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/nutrition_details_provider.dart';

class MealCard extends ConsumerWidget {
  final IconData icon;
  final String mealName;
  final int mealType;
  final bool isLastItem;
  const MealCard(this.mealName, this.mealType, this.icon, this.isLastItem, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listMeal = ref.watch(mealManagementControllerProvider(mealType)).value ?? [];
    final nutritionDetails = ref.watch(totalNutritionDetailsProvider(listMeal));
    double ratio = ((nutritionDetails[NutritionDetailType.calorie]) ?? 0) /
        (ref.watch(limitNutritionDetailsOfMealProvider(mealType))[NutritionDetailType.calorie] ??
            1);
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
              backgroundColor:
                  (ratio == 0) ? Colors.white : ((ratio <= 1) ? Colors.lightBlue : Colors.red[300]),
              child: Icon(
                icon,
                color: (ratio == 0) ? Colors.black : Colors.white,
              )),
          title: Text(mealName),
          subtitle: Text(
            "${(nutritionDetails[NutritionDetailType.calorie] ?? 0).toStringAsFixed(2)} / ${(ref.watch(limitNutritionDetailsOfMealProvider(mealType))[NutritionDetailType.calorie] ?? 0).toStringAsFixed(2)} Cal",
            style: TextStyle(
                color: (ratio <= 1) ? Colors.black : Colors.red[300],
                fontWeight: (ratio <= 1) ? FontWeight.normal : FontWeight.bold),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                listMeal.length.toString(),
                style: const TextStyle(fontSize: 19, color: Colors.lightBlue),
              ),
              const Text(
                "Eaten",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
        if (!isLastItem)
          const Divider(
            height: 4,
            color: Colors.white54,
          )
      ],
    );
  }
}


