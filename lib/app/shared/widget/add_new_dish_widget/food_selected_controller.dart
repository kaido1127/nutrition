import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/common/search_type.dart';
import 'package:nutritrion/app/features/search_foods/data/repository/search_foods_repository_provider.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/repository/view_food_details_repository_provider.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_selected_controller.g.dart';

@riverpod
class FoodSelectedController extends _$FoodSelectedController {
  @override
  Future<FoodDetailsEntity?> build(
      String foodName, bool isSearch, DataSourceType dataSourceType) async {
    print("[FoodSelectedController] start $foodName");

    final link = ref.keepAlive();
    final timer = Timer(const Duration(minutes: 1), () {
      print("[FoodSelectedController] Finish Timer - Close KeepAlive");
      link.close();
    });

    ref.onDispose(() {
      print("[FoodSelectedController] dispose $foodName");
      timer.cancel();
    });


    if (!isSearch) {
      return ref
          .read(viewFoodDetailsRepositoryProvider)
          .getFoodDetailsByName(foodName, dataSourceType);
    }

    final listFoodsResultSearch =
        await ref.watch(searchFoodRepositoryProvider).searchRemote(foodName, SearchType.byText);

    if (listFoodsResultSearch.isNotEmpty) {
      final foodAdd = listFoodsResultSearch.firstWhere((food) => food.foodType == FoodType.common);

      return ref
          .read(viewFoodDetailsRepositoryProvider)
          .getFoodDetailsByName(foodAdd.foodName, DataSourceType.remote);
    }
    return null;
  }
}
