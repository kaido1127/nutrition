// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItemEntity _$FoodItemEntityFromJson(Map<String, dynamic> json) =>
    FoodItemEntity(
      foodName: json['food_name'] as String,
      subtitle: json['subtitle'] as String,
      nfCalories: json['nf_calories'] as String,
      photoUrl: json['photo_url'] as String,
      foodType: $enumDecode(_$FoodTypeEnumMap, json['food_type']),
    );

Map<String, dynamic> _$FoodItemEntityToJson(FoodItemEntity instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'subtitle': instance.subtitle,
      'nf_calories': instance.nfCalories,
      'photo_url': instance.photoUrl,
      'food_type': _$FoodTypeEnumMap[instance.foodType]!,
    };

const _$FoodTypeEnumMap = {
  FoodType.common: 'common',
  FoodType.branded: 'branded',
  FoodType.favorite: 'favorite',
};
