import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_from_calorie_ninja.dart';

part 'search_food_calorie_ninja_response.g.dart';

@JsonSerializable()
class SearchFoodCalorieNinjaResponse {
  @JsonKey(name: "items")
  List<FoodFromCalorieNinja> foodList;

  SearchFoodCalorieNinjaResponse({
    required this.foodList,
  });

  factory SearchFoodCalorieNinjaResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodCalorieNinjaResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SearchFoodCalorieNinjaResponseToJson(this);
}
