import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/food_suggestion_entity.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field_controller.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';

class FoodSuggestionCard extends ConsumerWidget {
  final FoodSuggestionEntity food;

  const FoodSuggestionCard({super.key, required this.food});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text(food.foodName),
        subtitle: Text("${food.calorie.toStringAsFixed(2)} Cal - ${food.servingQuantity} ${food.servingUnit}"),
        trailing: CircleAvatar(
          child: CommonIconButton(
            function: () {
              ref.watch(searchTextFieldControllerProvider.notifier).changeText(food.foodName);
              context.push('/search_foods_page');
            },
            iconData: Icons.search,
          ),
        ),
      ),
    );
  }
}
