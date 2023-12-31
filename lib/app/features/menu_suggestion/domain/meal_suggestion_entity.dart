import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/food_suggestion_model.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/food_suggestion_entity.dart';

part 'meal_suggestion_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MealSuggestionEntity {
  final String? name;
  final String? note;
  final int? createdTime;
  final MealType mealType;
  final List<FoodSuggestionEntity> listFood;

  factory MealSuggestionEntity.fromJson(Map<String, dynamic> json) =>
      _$MealSuggestionEntityFromJson(json);

  MealSuggestionEntity(
      {required this.name,
      required this.note,
      required this.createdTime,
      required this.mealType,
      required this.listFood});

  Map<String, dynamic> toJson() => _$MealSuggestionEntityToJson(this);

  factory MealSuggestionEntity.fromModel(List<FoodSuggestionModel> list, MealType mealType) {
    return MealSuggestionEntity(
        mealType: mealType,
        listFood: list
            .map((food) => FoodSuggestionEntity(
                food.foodName, food.servingUnit, food.servingQuantity, food.calorie))
            .toList(),
        name: null,
        note: null,
        createdTime: null);
  }

  factory MealSuggestionEntity.fromLocal(MealMenuSuggestionData menu) => MealSuggestionEntity(
      name: menu.name,
      note: menu.note,
      createdTime: menu.createdTime,
      mealType: mealTypeFromInt(menu.mealType),
      listFood: menu.listFood.listFood);
}
