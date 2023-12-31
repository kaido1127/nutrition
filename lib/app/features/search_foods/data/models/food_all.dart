import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_of_branded.dart';

part 'food_all.g.dart';

@JsonSerializable()
class FoodAll {
  List<FoodCommon> foodCommonList;
  List<FoodOfBranded> foodOfBrandedList;

  FoodAll({
    required this.foodCommonList,
    required this.foodOfBrandedList,
  });

  factory FoodAll.fromJson(Map<String, dynamic> json) =>
      _$FoodAllFromJson(json);
  Map<String, dynamic> toJson() => _$FoodAllToJson(this);
}
