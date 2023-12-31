// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_from_calorie_ninja.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodFromCalorieNinja _$FoodFromCalorieNinjaFromJson(
        Map<String, dynamic> json) =>
    FoodFromCalorieNinja(
      name: json['name'] as String?,
      calories: (json['calories'] as num?)?.toDouble(),
      servingSizeG: (json['serving_size_g'] as num?)?.toDouble(),
      fatTotalG: (json['fat_total_g'] as num?)?.toDouble(),
      fatSaturatedG: (json['fat_saturated_g'] as num?)?.toDouble(),
      proteinG: (json['protein_g'] as num?)?.toDouble(),
      sodiumMg: json['sodium_mg'] as int?,
      potassiumMg: json['potassium_mg'] as int?,
      cholesterolMg: json['cholesterol_mg'] as int?,
      carbohydratesTotalG: (json['carbohydrates_total_g'] as num?)?.toDouble(),
      fiberG: (json['fiber_g'] as num?)?.toDouble(),
      sugarG: (json['sugar_g'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FoodFromCalorieNinjaToJson(
        FoodFromCalorieNinja instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calories': instance.calories,
      'serving_size_g': instance.servingSizeG,
      'fat_total_g': instance.fatTotalG,
      'fat_saturated_g': instance.fatSaturatedG,
      'protein_g': instance.proteinG,
      'sodium_mg': instance.sodiumMg,
      'potassium_mg': instance.potassiumMg,
      'cholesterol_mg': instance.cholesterolMg,
      'carbohydrates_total_g': instance.carbohydratesTotalG,
      'fiber_g': instance.fiberG,
      'sugar_g': instance.sugarG,
    };
