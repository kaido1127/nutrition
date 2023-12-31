// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_of_branded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodOfBranded _$FoodOfBrandedFromJson(Map<String, dynamic> json) =>
    FoodOfBranded(
      foodName: json['food_name'] as String?,
      servingUnit: json['serving_unit'] as String?,
      nixBrandId: json['nix_brand_id'] as String?,
      brandNameItemName: json['brand_name_item_name'] as String?,
      servingQty: (json['serving_qty'] as num?)?.toDouble(),
      nfCalories: (json['nf_calories'] as num?)?.toDouble(),
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      brandName: json['brand_name'] as String?,
      region: json['region'] as int?,
      brandType: json['brand_type'] as int?,
      nixItemId: json['nix_item_id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$FoodOfBrandedToJson(FoodOfBranded instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'serving_unit': instance.servingUnit,
      'nix_brand_id': instance.nixBrandId,
      'brand_name_item_name': instance.brandNameItemName,
      'serving_qty': instance.servingQty,
      'nf_calories': instance.nfCalories,
      'photo': instance.photo,
      'brand_name': instance.brandName,
      'region': instance.region,
      'brand_type': instance.brandType,
      'nix_item_id': instance.nixItemId,
      'locale': instance.locale,
    };
