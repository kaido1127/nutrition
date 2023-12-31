import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:nutritrion/app/features/view_food_common_details/presentation/controller/attribute_ratio_state_controller.dart';
import 'package:nutritrion/app/shared/widget/food_details_header.dart';
import 'package:nutritrion/app/shared/widget/nutrition_facts_card.dart';
import 'package:nutritrion/app/shared/widget/text_details_card.dart';

class FoodDetails extends ConsumerWidget {
  final FoodDetailsEntity foodCommon;
  final Size deviceSize;
  const FoodDetails({super.key, required this.foodCommon, required this.deviceSize});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final ratio = ref.watch(attributeRatioStateController(foodCommon));
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FoodDetailsHeader(foodCommon: foodCommon),
          const SizedBox(
            height: 20,
          ),
          const NutritionFactsCard(title: 'Nutrition Facts', substring: ''),
          NutritionFactsCard(
              title: 'Calories',
              substring:
              "${((foodCommon.nfCalories ?? 0) * ratio).toStringAsFixed(2)} Cal"),
          NutritionFactsCard(
              title: 'Total Fat',
              substring:
              '${((foodCommon.nfTotalFat ?? 0) * ratio).toStringAsFixed(2)} g'),
          NutritionFactsCard(
              title: 'Cholesterol',
              substring:
              '${((foodCommon.nfCholesterol ?? 0) * ratio).toStringAsFixed(2)} mg'),
          NutritionFactsCard(
              title: 'Sodium',
              substring: '${((foodCommon.nfSodium ?? 0) * ratio).toStringAsFixed(2)} mg'),
          NutritionFactsCard(
              title: 'Total Carbohydrates',
              substring:
              '${((foodCommon.nfTotalCarbohydrate ?? 0) * ratio).toStringAsFixed(2)} g'),
          NutritionFactsCard(
              title: 'Dietary Fiber',
              substring:
              '${((foodCommon.nfDietaryFiber ?? 0) * ratio).toStringAsFixed(2)} g'),
          NutritionFactsCard(
              title: 'Sugars',
              substring: '${((foodCommon.nfSugars ?? 0) * ratio).toStringAsFixed(2)} g'),
          NutritionFactsCard(
              title: 'Protein',
              substring: '${((foodCommon.nfProtein ?? 0) * ratio).toStringAsFixed(2)} g'),
        ],
      ),
    );
  }
}
