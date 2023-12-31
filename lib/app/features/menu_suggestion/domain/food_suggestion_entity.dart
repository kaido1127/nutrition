import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/food_suggestion_model.dart';

part 'food_suggestion_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FoodSuggestionEntity {
  final String foodName;
  final String servingUnit;
  final int servingQuantity;
  final double calorie;

  FoodSuggestionEntity(this.foodName, this.servingUnit, this.servingQuantity, this.calorie);

  factory FoodSuggestionEntity.fromJson(Map<String, dynamic> json) =>
      _$FoodSuggestionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FoodSuggestionEntityToJson(this);

  factory FoodSuggestionEntity.fromFoodSuggestionModel(FoodSuggestionModel foodSuggestionModel) =>
      FoodSuggestionEntity(foodSuggestionModel.foodName, foodSuggestionModel.servingUnit,
          foodSuggestionModel.servingQuantity, foodSuggestionModel.calorie);
}
