import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';

import 'controller/serving_qty_text_filed_controller.dart';

class ServingQtyTextFiled extends ConsumerWidget {
  final double height;
  final double width;
  final FoodDetailsEntity foodCommon;

  const ServingQtyTextFiled(
      {super.key, required this.height, required this.width, required this.foodCommon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        /*controller:
            ref.watch(servingQtyTextFiledControllerProvider(foodCommon)),*/
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        //onChanged: (value) {},
        onChanged: (value) {
          if (value.isNotEmpty && int.parse(value) > 0) {
            ref
                .read(servingQtyTextFiledControllerProvider(foodCommon).notifier)
                .changeServingQty(int.parse(value));
          } else {
            ref
                .read(servingQtyTextFiledControllerProvider(foodCommon).notifier)
                .changeServingQty(foodCommon.servingQty?.toInt() ?? 1);
          }
        },
        initialValue: ref.watch(servingQtyTextFiledControllerProvider(foodCommon)),
        /*onSubmitted: (value) {
          if (value.isNotEmpty && int.parse(value) > 0) {
            ref
                .read(
                    servingQtyTextFiledControllerProvider(foodCommon).notifier)
                .changeServingQty(int.parse(value));
          }
        },*/
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
    );
  }
}
