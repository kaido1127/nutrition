import 'package:flutter/cupertino.dart';
import 'package:nutritrion/app/core/data/models/alt_measure.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'serving_unit_select_controller.g.dart';

@riverpod
class ServingUnitSelectController extends _$ServingUnitSelectController {
  @override
  AltMeasure build(FoodDetailsEntity foodCommon) {
    return (foodCommon.altMeasures ?? [])
        .where((measures) => measures.measure == foodCommon.servingUnit)
        .first;
  }

  void changeServingUnit(AltMeasure newUnit) {
    state = newUnit;
  }
}
