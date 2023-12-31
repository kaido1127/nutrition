// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_suggestion_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodSuggestionEntity _$FoodSuggestionEntityFromJson(
        Map<String, dynamic> json) =>
    FoodSuggestionEntity(
      json['food_name'] as String,
      json['serving_unit'] as String,
      json['serving_quantity'] as int,
      (json['calorie'] as num).toDouble(),
    );

Map<String, dynamic> _$FoodSuggestionEntityToJson(
        FoodSuggestionEntity instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'serving_unit': instance.servingUnit,
      'serving_quantity': instance.servingQuantity,
      'calorie': instance.calorie,
    };
