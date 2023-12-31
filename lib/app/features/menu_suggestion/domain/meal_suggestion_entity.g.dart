// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_suggestion_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealSuggestionEntity _$MealSuggestionEntityFromJson(
        Map<String, dynamic> json) =>
    MealSuggestionEntity(
      name: json['name'] as String?,
      note: json['note'] as String?,
      createdTime: json['created_time'] as int?,
      mealType: $enumDecode(_$MealTypeEnumMap, json['meal_type']),
      listFood: (json['list_food'] as List<dynamic>)
          .map((e) => FoodSuggestionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealSuggestionEntityToJson(
        MealSuggestionEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'note': instance.note,
      'created_time': instance.createdTime,
      'meal_type': _$MealTypeEnumMap[instance.mealType]!,
      'list_food': instance.listFood,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
  MealType.snack: 'snack',
};
