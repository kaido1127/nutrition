import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/core/data/models/alt_measure.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/add_new_dish_widget/add_new_dish_widget.dart';
import 'package:nutritrion/app/shared/widget/add_new_dish_widget/food_selected_controller.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';
import 'package:nutritrion/app/shared/widget/food_list_tile.dart';

final isSavedStateProvider =
    StateProvider.autoDispose.family<bool, (int, int)>((ref, intAndIndex) => false);

class AIAddFoodChatCard extends ConsumerWidget {
  final AIAddFoodsMessageEntity aiAddFoodsMessageEntity;
  final int id;

  const AIAddFoodChatCard({super.key, required this.aiAddFoodsMessageEntity, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
        color: Colors.lightBlue[50],
        child: Column(
          children: [
            ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.android,
                    color: Colors.lightBlue,
                  ),
                ),
                title: Text(
                  aiAddFoodsMessageEntity.answer,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            ...aiAddFoodsMessageEntity.foods.map(
              (foodName) {
                int index = aiAddFoodsMessageEntity.foods.indexOf(foodName);
                return Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                    child: ref
                        .watch(
                            foodSelectedControllerProvider(foodName, true, DataSourceType.remote))
                        .when(
                            data: (data) {
                              if (data == null) {
                                return const Text("Not found food");
                              } else {
                                String servingUnit = '';
                                List<AltMeasure> list = data.altMeasures ?? [];
                                if (list.isNotEmpty) {
                                  servingUnit = servingUnit =
                                      StringFormatHelper.upperCaseFirstCharOfString(list
                                              .where((measures) =>
                                                  measures.measure == data.servingUnit)
                                              .first
                                              .measure ??
                                          '');
                                }

                                String servingQty = data.servingQty?.toInt().toString() ?? '1';
                                String calorie = (data.nfCalories ?? 0).toStringAsFixed(2);
                                return FoodListTile(
                                  imageUrl: data.photo?.thumb ?? CommonString.foodImageUrl,
                                  title:
                                      "$servingQty $servingUnit ${StringFormatHelper.upperCaseFirstCharOfString(data.foodName ?? '')}",
                                  subtitle: "$calorie Cal",
                                  calorie: calorie,
                                  isNonePadding: true,
                                  add: ref.watch(isSavedStateProvider((id, index)))
                                      ? CommonIconButton(
                                          iconData: Icons.done,
                                          function: () {},
                                          iconColor: Colors.green,
                                        )
                                      : CommonIconButton(
                                          iconData: Icons.add,
                                          function: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: AddNewDishWidget(
                                                      data,
                                                      idAndIndex: (id, index),
                                                    ),
                                                  );
                                                  // return AddNewDishWidget(foodName: foodName, isSearch: isSearch, dataSourceType: dataSourceType);
                                                });
                                          }),
                                );
                              }
                            },
                            error: (e, st) => ErrorStateWidget(error: e.toString()),
                            loading: () => const LoadingStateWidget()));
              },
            ).toList()
          ],
        ));
  }
}
