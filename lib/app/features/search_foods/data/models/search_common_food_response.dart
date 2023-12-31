import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';

part 'search_common_food_response.g.dart';

@JsonSerializable()
class SearchCommonFoodResponse {
  @JsonKey(name: "foods")
  List<FoodCommon> foodCommonList;

  SearchCommonFoodResponse({
    required this.foodCommonList,
  });

  factory SearchCommonFoodResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCommonFoodResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SearchCommonFoodResponseToJson(this);
}
