// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodAll _$FoodAllFromJson(Map<String, dynamic> json) => FoodAll(
      foodCommonList: (json['foodCommonList'] as List<dynamic>)
          .map((e) => FoodCommon.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodOfBrandedList: (json['foodOfBrandedList'] as List<dynamic>)
          .map((e) => FoodOfBranded.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodAllToJson(FoodAll instance) => <String, dynamic>{
      'foodCommonList': instance.foodCommonList,
      'foodOfBrandedList': instance.foodOfBrandedList,
    };
