import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/shared/widget/common_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_day_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_management_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/meal_tab/list_dish_item.dart';

class MealTab extends ConsumerStatefulWidget {
  final int mealType;
  const MealTab({super.key, required this.mealType});

  @override
  ConsumerState<MealTab> createState() => _MealTabState();
}

class _MealTabState extends ConsumerState<MealTab> {
  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(mealManagementControllerProvider(widget.mealType));

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: asyncValue.when(
            data: (data) {
              return ListDishItem(isEaten: false, listDish: data);
            },
            error: (e, st) => ErrorStateWidget(error: e.toString()),
            loading: () => const LoadingStateWidget()),
      ),
    );
  }
}
