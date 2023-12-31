// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_branded_food_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchBrandedFoodResponse _$SearchBrandedFoodResponseFromJson(
        Map<String, dynamic> json) =>
    SearchBrandedFoodResponse(
      foodOfBrandedList: (json['branded'] as List<dynamic>)
          .map((e) => FoodOfBranded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchBrandedFoodResponseToJson(
        SearchBrandedFoodResponse instance) =>
    <String, dynamic>{
      'branded': instance.foodOfBrandedList,
    };
