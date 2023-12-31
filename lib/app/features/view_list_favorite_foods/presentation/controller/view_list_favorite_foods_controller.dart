import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/shared/domain/food_item_entity.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/data/repository/view_list_favorite_food_repository_provider.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/presentation/controller/search_text_filed_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_list_favorite_foods_controller.g.dart';

@riverpod
class ViewListFavoriteFoodsController extends _$ViewListFavoriteFoodsController{
  @override
  Stream<List<FoodItemEntity>> build(){
    final repository = ref.watch(viewListFavoriteFoodRepositoryProvider);
    return repository.getAllFavoriteFood(ref.watch(searchTextFieldStateProvider));
  }

  Future<void> clearAllFavoriteFoods() async{
    try {
      await ref.read(viewListFavoriteFoodRepositoryProvider).clearAllFavoriteFoods();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
  Future<void> deleteFood(String foodName) async{
    try {
      await ref.read(viewListFavoriteFoodRepositoryProvider).deleteFavoriteFood(foodName);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

}