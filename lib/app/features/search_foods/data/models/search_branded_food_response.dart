import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_of_branded.dart';

part 'search_branded_food_response.g.dart';

@JsonSerializable()
class SearchBrandedFoodResponse {
  @JsonKey(name: "branded")
  List<FoodOfBranded> foodOfBrandedList;

  SearchBrandedFoodResponse({
    required this.foodOfBrandedList,
  });

  factory SearchBrandedFoodResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchBrandedFoodResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SearchBrandedFoodResponseToJson(this);
}
