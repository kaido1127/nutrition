// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_common_food_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCommonFoodResponse _$SearchCommonFoodResponseFromJson(
        Map<String, dynamic> json) =>
    SearchCommonFoodResponse(
      foodCommonList: (json['foods'] as List<dynamic>)
          .map((e) => FoodCommon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchCommonFoodResponseToJson(
        SearchCommonFoodResponse instance) =>
    <String, dynamic>{
      'foods': instance.foodCommonList,
    };
