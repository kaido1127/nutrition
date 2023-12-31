import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/shared/domain/food_item_entity.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/food_item_card.dart';
import 'package:nutritrion/app/shared/widget/not_found_widget.dart';
import 'list_food_item.dart';

class ListFoodItem extends ConsumerWidget {
  final List<FoodItemEntity> listFoods;
  const ListFoodItem({super.key, required this.listFoods});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return (listFoods.isNotEmpty)?SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final food = listFoods[index];
          return FoodItemCard(foodItemEntity: food);
        },
        childCount: listFoods.length,
      ),
    ):SliverToBoxAdapter(child: Center(child: ClickToSearchWithAI(context)),);
  }
}
