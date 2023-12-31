import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_management_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/nutrition_details_provider.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/food_list_tile.dart';

class DishItemCard extends ConsumerWidget {
  final DishTaskEntity dish;

  const DishItemCard({super.key, required this.dish});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nutritionDetails = ref.watch(nutritionDetailsProvider(dish));
    return FoodListTile(
        imageUrl: dish.photo ?? CommonString.foodImageUrl,
        title: dish.foodName ?? '',
        subtitle:
            "${dish.servingQty} - ${StringFormatHelper.upperCaseFirstCharOfString(dish.altMeasure!.measure.toString())}",
        calorie: "${dish.nfCalories ?? ''}");
  }
}
