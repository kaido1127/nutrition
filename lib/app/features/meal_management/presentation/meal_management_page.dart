import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/common_button.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_day_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/meal_tab/meal_tab.dart';

import 'widget/meal_tab/controller/tab_state_provider.dart';

class MealManagementPage extends ConsumerStatefulWidget {
  const MealManagementPage({super.key});

  @override
  ConsumerState<MealManagementPage> createState() => _MealManagementPageState();
}

class _MealManagementPageState extends ConsumerState<MealManagementPage> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: ref.watch(tabStateProvider),
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Your Meals"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
            width: deviceSize.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CommonButton(
                  function: () => context.push("/search_foods_page"),
                  text: "Add new dishes to your meals"),
            )),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TabBar(
                tabs: MealType.values
                    .map((mealType) =>
                        Tab(text: StringFormatHelper.upperCaseFirstCharOfString(mealType.name)))
                    .toList(),
              ),
              Expanded(
                flex: 5,
                child: TabBarView(
                    children: MealType.values
                        .map((mealType) => MealTab(mealType: mealTypeToInt(mealType)))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _selectDate(BuildContext context, WidgetRef ref) async {
  //   DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(2023),
  //       lastDate: DateTime(2100));
  //   if (pickedDate != null) {
  //     ref.read(mealDayControllerProvider.notifier).changeDateTime(pickedDate);
  //   }
  // }
}
