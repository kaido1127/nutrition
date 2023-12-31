import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/alt_measure.dart';

part 'dish_task_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DishTaskEntity{
  int? id;
  String? foodName;
  int? mealType;
  DateTime? dateTime;
  bool? isEaten;
  String? photo;
  double? servingWeightGrams;
  double? nfCalories;
  double? nfTotalFat;
  double? nfTotalCarbohydrate;
  double? nfProtein;
  double? nfSugars;
  int? servingQty;
  AltMeasure? altMeasure;

  DishTaskEntity({
    required this.id,
    required this.foodName,
    required this.mealType,
    required this.dateTime,
    required this.isEaten,
    required this.photo,
    required this.servingQty,
    required this.altMeasure,
    required this.servingWeightGrams,
    required this.nfCalories,
    required this.nfProtein,
    required this.nfSugars,
    required this.nfTotalFat,
    required this.nfTotalCarbohydrate

  });

  factory DishTaskEntity.fromJson(Map<String, dynamic> json) => _$DishTaskEntityFromJson(json);
  Map<String, dynamic> toJson() => _$DishTaskEntityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}