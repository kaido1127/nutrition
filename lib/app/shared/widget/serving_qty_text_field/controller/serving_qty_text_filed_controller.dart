import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'serving_qty_text_filed_controller.g.dart';

@riverpod
class ServingQtyTextFiledController extends _$ServingQtyTextFiledController {
  @override
  String build(FoodDetailsEntity foodCommon) {
    return foodCommon.servingQty?.toInt().toString() ?? '1';
  }

  void changeServingQty(int newServingQty) {
    //print(newServingQty);
    state = newServingQty.toString();
  }

  bool isExceededLength() {
    return state.length > 4;
  }
}
