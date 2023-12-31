import 'package:json_annotation/json_annotation.dart';

part 'food_suggestion_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FoodSuggestionModel {
  final String foodName;
  final String servingUnit;
  final int servingQuantity;
  final double calorie;

  FoodSuggestionModel(this.foodName, this.servingUnit , this.servingQuantity, this.calorie);

  factory FoodSuggestionModel.fromJson(Map<String, dynamic> json) => _$FoodSuggestionModelFromJson(json);
  Map<String, dynamic> toJson() => _$FoodSuggestionModelToJson(this);
}
