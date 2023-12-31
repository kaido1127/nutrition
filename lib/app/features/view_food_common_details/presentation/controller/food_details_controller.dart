import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/repository/view_food_details_repository.dart';
import 'package:nutritrion/app/features/view_food_common_details/data/repository/view_food_details_repository_provider.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuple/tuple.dart';

part 'food_details_controller.g.dart';

@riverpod
class FoodDetailsController extends _$FoodDetailsController {
  @override
  Future<FoodDetailsEntity> build(Tuple2<String, DataSourceType> tuple2) async {
    print("Food Details Controller build");
    final result = _repository.getFoodDetailsByName(tuple2.item1, tuple2.item2);
    final food = await result;
    print("Foodname From controller ${food.foodName}");
    return result;
  }

  ViewFoodDetailsRepository get _repository => ref.watch(viewFoodDetailsRepositoryProvider);

  Future<FoodDetailsEntity> foodDetailsEntity()async{
    return await _repository.getFoodDetailsByName(tuple2.item1, tuple2.item2);
  }

  Future<void> addFoodToLocal(FoodDetailsEntity foodDetailsEntity) async {
    try {
      bool isLocalFood = await _repository.isLocalFood(foodDetailsEntity.foodName??'');
      if(!isLocalFood){
        await _repository.addFoodToLocal(foodDetailsEntity);
        ref.invalidateSelf();
      }else{
        print("Don't add to local");
      }

    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Future<void> changeFavoriteState(FoodDetailsEntity foodDetailsEntity) async {
    try {
      await _repository.changeFavoriteState(foodDetailsEntity.foodName??'',foodDetailsEntity.isFavorite);
      ref.invalidateSelf();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Future<void> deleteFavoriteFood() async {
    try {
      await _repository.deleteFoodFavorite(tuple2.item1);
      ref.invalidateSelf();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }


}
