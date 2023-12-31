import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/shared/widget/add_new_dish_widget/add_new_dish_widget.dart';
import 'package:nutritrion/app/shared/widget/add_new_dish_widget/food_selected_controller.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';

class AddNewDishPage extends ConsumerStatefulWidget {
  final (String, DataSourceType) foodNameAndDataSourceType;

  const AddNewDishPage({super.key, required this.foodNameAndDataSourceType});

  @override
  ConsumerState<AddNewDishPage> createState() => _AddNewDishPageState();
}

class _AddNewDishPageState extends ConsumerState<AddNewDishPage> {
  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(foodSelectedControllerProvider(
        widget.foodNameAndDataSourceType.$1, false, widget.foodNameAndDataSourceType.$2));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add New Dish"),
        ),
        body: asyncValue.when(
            data: (data) {
              return (data == null)
                  ? const Center(
                      child: Text("Not found food"),
                    )
                  : AddNewDishWidget(data);
            },
            error: (e, st) => ErrorStateWidget(error: e.toString()),
            loading: () => const LoadingStateWidget()));
  }
}
