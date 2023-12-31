// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFoodItemResponse _$SearchFoodItemResponseFromJson(
        Map<String, dynamic> json) =>
    SearchFoodItemResponse(
      foodName: json['foodName'] as String,
      subtitle: json['subtitle'] as String,
      nfCalories: json['nfCalories'] as String,
      photoUrl: json['photoUrl'] as String,
      foodType: $enumDecode(_$FoodTypeEnumMap, json['foodType']),
    );

Map<String, dynamic> _$SearchFoodItemResponseToJson(
        SearchFoodItemResponse instance) =>
    <String, dynamic>{
      'foodName': instance.foodName,
      'subtitle': instance.subtitle,
      'nfCalories': instance.nfCalories,
      'photoUrl': instance.photoUrl,
      'foodType': _$FoodTypeEnumMap[instance.foodType]!,
    };

const _$FoodTypeEnumMap = {
  FoodType.common: 'common',
  FoodType.branded: 'branded',
  FoodType.favorite: 'favorite',
};
