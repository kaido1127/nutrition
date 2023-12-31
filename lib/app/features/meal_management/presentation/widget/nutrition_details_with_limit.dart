import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/shared/widget/ratio_linear.dart';
import 'package:nutritrion/app/splash_page.dart';

import '../controller/limit_nutrition_details_of_day_provider.dart';

class NutritionDetailsWithLimit extends ConsumerWidget {
  final String substring;
  final double nutritionDetailsValue;
  final String unit;
  final NutritionDetailType nutritionDetailType;

  const NutritionDetailsWithLimit(
      this.substring, this.nutritionDetailsValue, this.unit, this.nutritionDetailType,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = deviceSize.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Text(
          "${(nutritionDetailsValue).toStringAsFixed(2)} / ${(ref.watch(limitNutritionDetailsOfDayProvider)[nutritionDetailType] ?? 0).toStringAsFixed(2)} $unit",
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
        ),
        const SizedBox(
          height: 2,
        ),
        RatioLinear(
            width: width * 0.25,
            ratio: (nutritionDetailsValue) /
                (ref.watch(limitNutritionDetailsOfDayProvider)[nutritionDetailType]??1.0)),
        const SizedBox(
          height: 5,
        ),
        Text(substring, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
