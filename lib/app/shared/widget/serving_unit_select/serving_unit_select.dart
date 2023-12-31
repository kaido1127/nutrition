import 'package:flutter/material.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/serving_unit_select_controller.dart';

class ServingUnitSelect extends ConsumerWidget {
  final FoodDetailsEntity foodCommon;
  final double height;
  final double width;

  const ServingUnitSelect(
      {super.key, required this.foodCommon, required this.height, required this.width});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width,
      height: height,
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlue.shade100),
            borderRadius: BorderRadius.circular(10),
          ),
          errorStyle: const TextStyle(color: Colors.lightBlueAccent),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
        value: ref.watch(servingUnitSelectControllerProvider(foodCommon)),
        items: (foodCommon.altMeasures ?? []).map((measure) {
          String measureText = measure.measure ?? '';
          return DropdownMenuItem(
            value: measure,
            child: Text(
              StringFormatHelper.upperCaseFirstCharOfString(measureText)
                  .substring(0, (measureText.length <= 30) ? measureText.length : 30),
              style: const TextStyle(fontSize: 15),
            ),
          );
        }).toList(),
        onChanged: (val) {
          ref
              .read(servingUnitSelectControllerProvider(foodCommon).notifier)
              .changeServingUnit(val!);
        },
      ),
    );
  }
}
