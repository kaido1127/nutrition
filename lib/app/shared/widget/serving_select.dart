import 'package:flutter/material.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:nutritrion/app/shared/widget/serving_qty_text_field/serving_qty_text_filed.dart';
import 'package:nutritrion/app/shared/widget/serving_unit_select/serving_unit_select.dart';
import 'package:nutritrion/app/splash_page.dart';

class ServingSelect extends StatelessWidget {
  final FoodDetailsEntity foodCommon;
  const ServingSelect({super.key, required this.foodCommon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ServingQtyTextFiled(
          height: deviceSize.height * 0.07,
          width: deviceSize.width * 0.2,
          foodCommon: foodCommon,
        ),
        ServingUnitSelect(
            foodCommon: foodCommon,
            height: deviceSize.height * 0.07,
            width: deviceSize.width * 0.7)
      ],
    );
  }
}
