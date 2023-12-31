import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/widget/ai_add_food_chat_card.dart';
import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_management_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/select_date_time/select_date_time.dart';
import 'package:nutritrion/app/features/view_food_common_details/presentation/controller/food_details_controller.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:tuple/tuple.dart';

import '../common_button.dart';
import '../food_details_header.dart';
import '../serving_qty_text_field/controller/serving_qty_text_filed_controller.dart';
import '../serving_select.dart';
import '../serving_unit_select/controller/serving_unit_select_controller.dart';

class AddNewDishWidget extends ConsumerStatefulWidget {
  final (int, int)? idAndIndex;
  final FoodDetailsEntity foodDetailsEntity;

  const AddNewDishWidget(
    this.foodDetailsEntity, {
    super.key,
    this.idAndIndex,
  });

  @override
  ConsumerState<AddNewDishWidget> createState() => _AddNewDishWidgetState();
}

class _AddNewDishWidgetState extends ConsumerState<AddNewDishWidget> {
  @override
  Widget build(BuildContext context) {
    final data = widget.foodDetailsEntity;
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringFormatHelper.upperCaseFirstCharOfString(data.foodName ?? ''),
                  style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                if (widget.idAndIndex == null)
                  IconButton(
                      onPressed: () => context.pop(),
                      icon: const CircleAvatar(child: Icon(Icons.edit)))
              ],
            ),
            FoodDetailsHeader(foodCommon: data),
            const SizedBox(
              height: 10,
            ),
            ServingSelect(foodCommon: data),
            const SizedBox(
              height: 15,
            ),
            const SelectDateTime(),
            const SizedBox(
              height: 15,
            ),
            CommonButton(function: () => addDishFunction(data), text: "Save")
          ],
        ));
  }

  Future<void> addDishFunction(FoodDetailsEntity data) async {
    if (data != null) {
      var food = data;
      //bool isLocalFood = ref.read(favoriteStateControllerProvider(Tuple2(food.foodName??'', food.dataSourceType)).notifier).;
      if (!food.isFavorite) {
        ref
            .read(foodDetailsControllerProvider(Tuple2(food.foodName ?? '', DataSourceType.remote))
                .notifier)
            .addFoodToLocal(food);
      }
      final int mealType = mealTypeToInt(ref.watch(mealStateProvider));
      final date = ref.watch(dateStateProvider);
      print("[Date Add] $date");

      final newDish = DishTaskEntity(
        id: DateTime.now().millisecondsSinceEpoch,
        foodName: food.foodName,
        mealType: mealType,
        dateTime: DateTime(date.year, date.month, date.day, 12),
        isEaten: false,
        photo: (food.photo ?? Photo(thumb: CommonString.foodImageUrl)).thumb,
        servingQty: int.parse(ref.watch(servingQtyTextFiledControllerProvider(food))),
        altMeasure: ref.watch(servingUnitSelectControllerProvider(food)),
        servingWeightGrams: food.servingWeightGrams,
        nfTotalCarbohydrate: food.nfTotalCarbohydrate,
        nfSugars: food.nfSugars,
        nfProtein: food.nfProtein,
        nfTotalFat: food.nfTotalFat,
        nfCalories: food.nfCalories,
      );

      ref.read(mealManagementControllerProvider(mealType).notifier).addDish(newDish);
      context.pop();
      if (widget.idAndIndex != null) {
        ref.read(isSavedStateProvider((widget.idAndIndex) ?? (0, 0)).notifier).state = true;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Add ${food.foodName} successfully")));
    }
  }
}
