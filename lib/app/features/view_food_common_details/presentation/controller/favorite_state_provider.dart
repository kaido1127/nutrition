import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/seach_foods_controller.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/repository/view_food_details_repository_provider.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuple/tuple.dart';
import 'food_details_controller.dart';

part 'favorite_state_provider.g.dart';

@riverpod
class FavoriteStateController extends _$FavoriteStateController {
  @override
  Future<bool> build(Tuple2<String, DataSourceType> tuple2) async {
    bool result = await ref.watch(viewFoodDetailsRepositoryProvider).isFavoriteFood(tuple2.item1);
    return result;
  }

  Future<void> changeFoodState(FoodDetailsEntity foodDetailsEntity) async {
    final isLocalFood =
        await ref.watch(viewFoodDetailsRepositoryProvider).isLocalFood(tuple2.item1);

    print(isLocalFood);
    if (!isLocalFood) {
      await ref
          .read(foodDetailsControllerProvider(tuple2).notifier)
          .addFoodToLocal(foodDetailsEntity);
    }

    ref.read(foodDetailsControllerProvider(tuple2).notifier).changeFavoriteState(foodDetailsEntity);
    ref.invalidateSelf();
  }
}
