
import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/common/food_type.dart';

part 'search_food_item_response.g.dart';

@JsonSerializable()
class SearchFoodItemResponse {
  String foodName;
  String subtitle;
  String nfCalories;
  String photoUrl;
  FoodType foodType;

  SearchFoodItemResponse(
      {required this.foodName,
        required this.subtitle,
        required this.nfCalories,
        required this.photoUrl,
        required this.foodType});

  factory SearchFoodItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodItemResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SearchFoodItemResponseToJson(this);
}
