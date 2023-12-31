// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_calorie_ninja_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFoodCalorieNinjaResponse _$SearchFoodCalorieNinjaResponseFromJson(
        Map<String, dynamic> json) =>
    SearchFoodCalorieNinjaResponse(
      foodList: (json['items'] as List<dynamic>)
          .map((e) => FoodFromCalorieNinja.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchFoodCalorieNinjaResponseToJson(
        SearchFoodCalorieNinjaResponse instance) =>
    <String, dynamic>{
      'items': instance.foodList,
    };
