// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_food_suggestion_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListFoodSuggestionEntity _$ListFoodSuggestionEntityFromJson(
        Map<String, dynamic> json) =>
    ListFoodSuggestionEntity(
      listFood: (json['list_food'] as List<dynamic>)
          .map((e) => FoodSuggestionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListFoodSuggestionEntityToJson(
        ListFoodSuggestionEntity instance) =>
    <String, dynamic>{
      'list_food': instance.listFood,
    };
