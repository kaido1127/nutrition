import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/user_management/presentation/controller/user_information_controller.dart';
import 'package:nutritrion/app/helper/color_state.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/common_button.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/all_dish_eaten_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_day_provider.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_day_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/nutrition_details_provider.dart';
import 'package:nutritrion/app/shared/widget/common_container.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/meal_card.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/nutrition_details_with_limit.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';
import 'package:nutritrion/app/splash_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'widget/meal_tab/controller/tab_state_provider.dart';

class SummaryPage extends ConsumerWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nutritionDetails = ref.watch(totalNutritionDetailsProvider(ref.watch(allDishProvider)));
    double ratioCalorie = (nutritionDetails[NutritionDetailType.calorie] ?? 0) /
        (ref.watch(limitNutritionDetailsOfDayProvider)[NutritionDetailType.calorie] ?? 1);
    final currentUserAsyncValue = ref.watch(userInformationControllerProvider);
    return DefaultTabController(
      initialIndex: ref.watch(tabStateProvider),
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap: () => _selectDate(context, ref),
              child: Row(
                children: [
                  Text(
                    (ref.watch(mealDayControllerProvider.notifier).isToDay())
                        ? "Today"
                        : DateFormat("dd/MM/yyyy").format(ref.watch(mealDayControllerProvider)),
                    style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1,fontSize: 19),
                  ),
                  const Icon(Icons.expand_more)
                ],
              )),
          actions: [
            // IconButton(
            //     onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => DriftDbViewer(ref.watch(appDatabaseProvider)))),
            //     icon: const CircleAvatar(
            //         //backgroundColor: Colors.redAccent[200],
            //         child: Icon(Icons.data_array, color: Colors.black54))),
            IconButton(
                onPressed: () => context.push("/view_list_favorite_foods_page", extra: false),
                icon: const CircleAvatar(
                    //backgroundColor: Colors.redAccent[200],
                    child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))),
            CommonIconButton(
                function: () => _showNavigationAIFeature(context), iconData: Icons.android),
            CommonIconButton(
              function: () => _showNavigationMealSuggestion(context),
              iconData: Icons.menu,
            ),
            CommonIconButton(
                function: () => context.push("/enter_user_information_page"),
                iconData: Icons.person),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
            width: deviceSize.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CommonButton(
                  function: () => _showNavigationAddDish(context),
                  text: "Add new dishes to your meals"),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Summary",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    currentUserAsyncValue.when(
                        data: (user) {
                          if (user == null) {
                            return TextButton(
                                onPressed: () => context.push('/enter_user_information_page'),
                                child: const Text(
                                  "Enter your information",
                                  style: TextStyle(fontSize: 17),
                                ));
                          } else {
                            int now = DateTime.now().millisecondsSinceEpoch;
                            int startTime =
                                (user.startTimeTarget ?? DateTime.now()).millisecondsSinceEpoch;
                            int currentWeek = _currentWeeks(now - startTime);
                            if (currentWeek > (user.completeWeeksTarget ?? 0)) {
                              return TextButton(
                                  onPressed: () => context.push('/enter_user_information_page'),
                                  child: const Text(
                                    "Start new target",
                                    style: TextStyle(fontSize: 17, color: Colors.blue),
                                  ));
                            } else {
                              return Text(
                                "Week ${_currentWeeks(now - startTime)}",
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                              );
                            }
                          }
                        },
                        error: (e, st) => Text(e.toString()),
                        loading: () => const CircularProgressIndicator())
                  ],
                ),
                CommonContainer(
                    height: deviceSize.height * 0.2,
                    width: deviceSize.width,
                    widget: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        CircularPercentIndicator(
                          radius: deviceSize.width * 0.14,
                          percent: (ratioCalorie >= 0 && ratioCalorie <= 1) ? ratioCalorie : 1,
                          lineWidth: 10,
                          progressColor: colorsState(ratioCalorie),
                          center: CircleAvatar(
                            radius: deviceSize.width * 0.14 - 10,
                            backgroundColor: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Text(
                                  (ref.watch(limitNutritionDetailsOfDayProvider)[
                                              NutritionDetailType.calorie] ??
                                          0)
                                      .toStringAsFixed(2),
                                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                                ),
                                const Text('Cal', style: TextStyle(fontSize: 13)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  NutritionDetailsWithLimit(
                                      'Sugars',
                                      nutritionDetails[NutritionDetailType.sugar] ?? 0,
                                      'g',
                                      NutritionDetailType.sugar),
                                  NutritionDetailsWithLimit(
                                      'Fat',
                                      nutritionDetails[NutritionDetailType.fat] ?? 0,
                                      'g',
                                      NutritionDetailType.fat),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  NutritionDetailsWithLimit(
                                      'Carbs',
                                      nutritionDetails[NutritionDetailType.carb] ?? 0,
                                      'g',
                                      NutritionDetailType.carb),
                                  NutritionDetailsWithLimit(
                                      'Protein',
                                      nutritionDetails[NutritionDetailType.protein] ?? 0,
                                      'g',
                                      NutritionDetailType.protein),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Nutrition",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    TextButton(
                        onPressed: () => context.push('/meal_management_page'),
                        child: const Text(
                          "View Details",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
                CommonContainer(
                    height: deviceSize.height * 0.38,
                    width: deviceSize.width,
                    widget: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MealCard("Breakfast", 0, Icons.free_breakfast, false),
                        MealCard("Lunch", 1, Icons.lunch_dining, false),
                        MealCard("Dinner", 2, Icons.dinner_dining, false),
                        MealCard("Snacks", 3, Icons.fastfood_sharp, true),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _selectDate(BuildContext context, WidgetRef ref) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      ref.read(mealDayControllerProvider.notifier).changeDateTime(pickedDate);
    }
  }

  int _currentWeeks(int startTimeMillisecond) {
    int millisecondsPerWeek = 7 * 24 * 60 * 60 * 1000;
    int numberOfWeeks = (startTimeMillisecond / millisecondsPerWeek).ceil();

    return numberOfWeeks;
  }

  void _showNavigationMealSuggestion(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: deviceSize.width,
            height: deviceSize.height * 0.35,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Select your meal",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  Column(
                    children: MealType.values
                        .map((meal) => InkWell(
                              onTap: () {
                                context.pop();
                                context.push('/favorite_meal_suggestion_page', extra: meal);
                              },
                              child: ListTile(
                                title:
                                    Text(StringFormatHelper.upperCaseFirstCharOfString(meal.name)),
                                trailing: CommonIconButton(
                                    iconData: Icons.navigate_next_outlined,
                                    function: () {
                                      context.pop();
                                      context.push('/favorite_meal_suggestion_page', extra: meal);
                                    }),
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          );
        });
  }

  void _showNavigationAIFeature(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: deviceSize.width,
            height: deviceSize.height * 0.27,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "AI Nutritionist",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  InkWell(
                    onTap: () {
                      context.pop();
                      context.push('/ai_chatbot_page');
                    },
                    child: ListTile(
                      title: const Text("AI Chatbot"),
                      subtitle: const Text("Chat with AI"),
                      trailing: CommonIconButton(
                        function: () {
                          context.pop();
                          context.push('/ai_chatbot_page');
                        },
                        iconData: Icons.navigate_next_outlined,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.pop();
                      context.push('/ai_menu_suggestion_page');
                    },
                    child: ListTile(
                      title: const Text("AI Menu Suggestion"),
                      subtitle:
                          const Text("Creates suggested menus for you based on your information"),
                      trailing: CommonIconButton(
                          function: () {
                            context.pop();
                            context.push('/ai_menu_suggestion_page');
                          },
                          iconData: Icons.navigate_next_outlined),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showNavigationAddDish(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: deviceSize.width,
            height: deviceSize.height * 0.2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Add new dishes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  InkWell(
                    onTap: () {
                      context.pop();
                      context.push("/search_foods_page");
                    },
                    child: ListTile(
                      title: const Text("Search"),
                      trailing: CommonIconButton(
                        function: () {
                          context.pop();
                          context.push("/search_foods_page");
                        },
                        iconData: Icons.navigate_next_outlined,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.pop();
                      _showNavigationMealSuggestion(context);
                    },
                    child: ListTile(
                      title: const Text("From your menu"),
                      trailing: CommonIconButton(
                          function: () {
                            context.pop();
                            _showNavigationMealSuggestion(context);
                          },
                          iconData: Icons.navigate_next_outlined),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
