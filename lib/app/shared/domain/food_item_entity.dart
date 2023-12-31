import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_from_calorie_ninja.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_of_branded.dart';

part 'food_item_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FoodItemEntity {
  String foodName;
  String subtitle;
  String nfCalories;
  String photoUrl;
  FoodType foodType;

  FoodItemEntity(
      {required this.foodName,
      required this.subtitle,
      required this.nfCalories,
      required this.photoUrl,
      required this.foodType});

  factory FoodItemEntity.loadFromFoodCommonLocalData(FoodCommonLocalData foodFavorite) =>
      FoodItemEntity(
          foodName: foodFavorite.foodName,
          subtitle: "${foodFavorite.servingQty} ${foodFavorite.servingUnit}",
          nfCalories: foodFavorite.nfCalories.toString() ?? '',
          photoUrl: foodFavorite.photoUrl,
          foodType: FoodType.favorite);

  factory FoodItemEntity.loadFromFoodCommon(FoodCommon foodCommon) => FoodItemEntity(
      foodName: foodCommon.foodName ?? "",
      subtitle: "${foodCommon.servingQty} ${foodCommon.servingUnit}",
      nfCalories: foodCommon.nfCalories.toString() ?? '',
      photoUrl: (foodCommon.photo ?? Photo(thumb: CommonString.foodImageUrl)).thumb ??
          CommonString.foodImageUrl,
      foodType: FoodType.common);

  factory FoodItemEntity.loadFromFoodOfBranded(FoodOfBranded foodOfBranded) => FoodItemEntity(
      foodName: foodOfBranded.foodName ?? "",
      subtitle: "${foodOfBranded.brandName} - ${foodOfBranded.servingUnit}",
      nfCalories: foodOfBranded.nfCalories.toString() ?? '',
      photoUrl: (foodOfBranded.photo ?? Photo(thumb: CommonString.foodImageUrl)).thumb ??
          CommonString.foodImageUrl,
      foodType: FoodType.branded);

  factory FoodItemEntity.loadFromFoodCalorieNinjaBranded(FoodFromCalorieNinja food) => FoodItemEntity(
      foodName: food.name ?? "",
      subtitle: "Serving Size ${food.servingSizeG} gram",
      nfCalories: food.calories.toString() ?? '',
      photoUrl: CommonString.foodImageUrl,
      foodType: FoodType.branded);

  factory FoodItemEntity.loadFromFoodCalorieCommon(FoodFromCalorieNinja food) => FoodItemEntity(
      foodName: food.name ?? "",
      subtitle: "Total Fat ${food.fatTotalG} gram",
      nfCalories: food.calories.toString() ?? '',
      photoUrl: CommonString.foodImageUrl,
      foodType: FoodType.common);

  factory FoodItemEntity.fromJson(Map<String, dynamic> json) => _$FoodItemEntityFromJson(json);
  Map<String, dynamic> toJson() => _$FoodItemEntityToJson(this);
}
