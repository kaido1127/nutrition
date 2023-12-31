import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/controller/meal_suggestion_controller.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/controller/save_meal_button_state_controller.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/widget/food_suggestion_card.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/shared/widget/common_button.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';
import 'package:nutritrion/app/shared/widget/common_text_filed.dart';
import 'package:nutritrion/app/splash_page.dart';

class MealSuggestion extends ConsumerWidget {
  final MealSuggestionEntity mealSuggestionEntity;

  const MealSuggestion({super.key, required this.mealSuggestionEntity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listFood = mealSuggestionEntity.listFood.reversed.toList();

    double totalCalorie = 0;
    for (var food in listFood) {
      totalCalorie += food.calorie;
    }

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "${StringFormatHelper.upperCaseFirstCharOfString((mealSuggestionEntity.name != null) ? (mealSuggestionEntity.name ?? '') : mealSuggestionEntity.mealType.name)} - ${totalCalorie.toStringAsFixed(2)} Cal",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            subtitle:
                (mealSuggestionEntity.note != null) ? Text(mealSuggestionEntity.note ?? '') : null,
            trailing: (mealSuggestionEntity.name != null)
                ? SizedBox(
                    width: deviceSize.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CommonIconButton(
                          iconData: Icons.edit,
                          function: () => _saveMealBottomSheet(
                              context: context,
                              ref: ref,
                              isExist: true,
                              initName: mealSuggestionEntity.name,
                              initNote: mealSuggestionEntity.note),
                        ),
                        CommonIconButton(
                          iconData: Icons.delete,
                          color: Colors.redAccent,
                          iconColor: Colors.white,
                          function: () =>
                              _confirmDeleteMenuDialog(context, ref, mealSuggestionEntity),
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    width: deviceSize.width * 0.23,
                    child: ref
                        .watch(saveMealButtonStateControllerProvider(mealSuggestionEntity.mealType))
                        .when(
                            data: (data) {
                              return AnimatedSwitcher(
                                duration: const Duration(milliseconds: 700),
                                child: data
                                    ? const Icon(
                                        Icons.done,
                                        color: Colors.green,
                                      )
                                    : CommonButton(
                                        function: () => _saveMealBottomSheet(
                                            context: context, ref: ref, isExist: false),
                                        text: "Save",
                                      ),
                              );
                            },
                            error: (e, st) => const SizedBox(),
                            loading: () => const LoadingStateWidget())),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: listFood.length,
                (context, index) => FoodSuggestionCard(food: listFood[index]))),
      ],
    );
  }

  void _confirmDeleteMenuDialog(
      BuildContext context, WidgetRef ref, MealSuggestionEntity mealSuggestionEntity) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation'),
          content: Text('Do you want to delete the "${mealSuggestionEntity.name}" meal?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                context.pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                context.pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    ).then((result) {
      //context.pop();
      if (result != null && result) {
        ref
            .read(mealSuggestionControllerProvider(mealSuggestionEntity.mealType).notifier)
            .deleteMenu(mealSuggestionEntity.createdTime ?? 0);
      }
    });
  }

  void _saveMealBottomSheet(
      {required BuildContext context,
      required WidgetRef ref,
      required bool isExist,
      String? initName,
      String? initNote}) {
    final TextEditingController nameTextController = TextEditingController(text: initName);
    final TextEditingController noteTextController = TextEditingController(text: initNote);

    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: deviceSize.height * 0.25,
            width: deviceSize.width,
            child: Material(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(45), topLeft: Radius.circular(45)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: const Text('Cancel', style: TextStyle(color: Colors.lightBlue)),
                      ),
                      Text(
                        "Save to your ${mealSuggestionEntity.mealType.name}",
                        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          if (nameTextController.text.isNotEmpty &&
                              noteTextController.text.isNotEmpty) {
                            final String name = nameTextController.text;
                            final String note = noteTextController.text;

                            if (isExist) {
                              ref
                                  .read(mealSuggestionControllerProvider(
                                          mealSuggestionEntity.mealType)
                                      .notifier)
                                  .updateMenu(mealSuggestionEntity.createdTime ?? 0, name, note);
                            } else {
                              ref
                                  .read(saveMealButtonStateControllerProvider(
                                          mealSuggestionEntity.mealType)
                                      .notifier)
                                  .saveMenu(
                                      createdTime: DateTime.now().millisecondsSinceEpoch,
                                      name: name,
                                      note: note,
                                      menuData: mealSuggestionEntity);
                            }

                            // nameTextController.dispose();
                            // noteTextController.dispose();
                            context.pop();

                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text("Saved Successfully")));
                          }
                        },
                        child: const Text('Save', style: TextStyle(color: Colors.lightBlue)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                    child: Column(
                      children: [
                        CommonTextField(
                          hintText: 'Name',
                          textEditingController: nameTextController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CommonTextField(
                          hintText: 'Note',
                          textEditingController: noteTextController,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).closed.then((value) {
      print("[SaveMenuButton] start dispose");
      nameTextController.dispose();
      noteTextController.dispose();
      print("[SaveMenuButton] finish dispose");
    });
  }
}
