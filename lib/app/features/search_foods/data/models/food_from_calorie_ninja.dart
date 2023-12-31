import 'package:json_annotation/json_annotation.dart';

part 'food_from_calorie_ninja.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FoodFromCalorieNinja {
  String? name;
  double? calories;
  double? servingSizeG;
  double? fatTotalG;
  double? fatSaturatedG;
  double? proteinG;
  int? sodiumMg;
  int? potassiumMg;
  int? cholesterolMg;
  double? carbohydratesTotalG;
  double? fiberG;
  double? sugarG;

  FoodFromCalorieNinja({
    this.name,
    this.calories,
    this.servingSizeG,
    this.fatTotalG,
    this.fatSaturatedG,
    this.proteinG,
    this.sodiumMg,
    this.potassiumMg,
    this.cholesterolMg,
    this.carbohydratesTotalG,
    this.fiberG,
    this.sugarG,
  });

  factory FoodFromCalorieNinja.fromJson(Map<String, dynamic> json) => _$FoodFromCalorieNinjaFromJson(json);
  Map<String, dynamic> toJson() => _$FoodFromCalorieNinjaToJson(this);
}
