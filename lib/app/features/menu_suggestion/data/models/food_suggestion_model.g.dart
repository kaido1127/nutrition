// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodSuggestionModel _$FoodSuggestionModelFromJson(Map<String, dynamic> json) =>
    FoodSuggestionModel(
      json['food_name'] as String,
      json['serving_unit'] as String,
      json['serving_quantity'] as int,
      (json['calorie'] as num).toDouble(),
    );

Map<String, dynamic> _$FoodSuggestionModelToJson(
        FoodSuggestionModel instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'serving_unit': instance.servingUnit,
      'serving_quantity': instance.servingQuantity,
      'calorie': instance.calorie,
    };
