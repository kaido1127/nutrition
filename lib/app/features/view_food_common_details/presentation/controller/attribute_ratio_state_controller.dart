import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:nutritrion/app/shared/widget/serving_qty_text_field/controller/serving_qty_text_filed_controller.dart';
import 'package:nutritrion/app/shared/widget/serving_unit_select/controller/serving_unit_select_controller.dart';



final attributeRatioStateController =
    StateProvider.family.autoDispose<double, FoodDetailsEntity>((ref, foodCommon) {
  final unit = ref.watch(servingUnitSelectControllerProvider(foodCommon));
  final selectWeight = unit.servingWeight ?? 0.0;
  final selectQty = unit.qty ?? 1.0;
  final rootWeight = foodCommon.servingWeightGrams ?? 1.0;
  final rootQty = int.parse(
      ref.watch(servingQtyTextFiledControllerProvider(foodCommon)));
  final ratio = rootQty * selectWeight / rootWeight / selectQty;
  return ratio;
});
