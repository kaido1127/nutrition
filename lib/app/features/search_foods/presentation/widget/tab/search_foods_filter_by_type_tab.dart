import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/barcode_controller.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/seach_foods_controller.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/food_item_card.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field_controller.dart';
import 'package:nutritrion/app/shared/widget/not_found_widget.dart';
import 'package:nutritrion/app/shared/widget/search_widget.dart';

class SearchFoodsFilterByTypeTab extends ConsumerWidget {
  final FoodType foodType;
  const SearchFoodsFilterByTypeTab({super.key, required this.foodType});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = (foodType == FoodType.favorite)
        ? ref.watch(searchFoodsLocalController)
        : ref.watch(searchFoodRemoteControllerProvider);
    //final asyncValue = ref.watch(searchFoodsRemoteController);

    return (ref.watch(searchTextFieldControllerProvider).text.isNotEmpty ||
            ref.watch(barcodeControllerProvider).isNotEmpty)
        ? asyncValue.when(
            data: (data) {
              final listFoods = data.where((food) => food.foodType == foodType).toList();
              if (foodType == FoodType.favorite) listFoods.reversed.toList();
              return (listFoods.isNotEmpty)
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        final food = listFoods[index];
                        return FoodItemCard(foodItemEntity: food);
                      },
                      itemCount: listFoods.length)
                  : ClickToSearchWithAI(context);
            },
            error: (e, st) => ClickToSearchWithAI(context),
            loading: () => const LoadingStateWidget())
        : SearchWidegt();
  }
}
