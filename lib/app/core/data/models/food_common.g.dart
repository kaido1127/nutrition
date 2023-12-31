// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCommon _$FoodCommonFromJson(Map<String, dynamic> json) => FoodCommon(
      foodName: json['food_name'] as String?,
      brandName: json['brand_name'] as String?,
      servingQty: (json['serving_qty'] as num?)?.toDouble(),
      servingUnit: json['serving_unit'] as String?,
      servingWeightGrams: (json['serving_weight_grams'] as num?)?.toDouble(),
      nfCalories: (json['nf_calories'] as num?)?.toDouble(),
      nfTotalFat: (json['nf_total_fat'] as num?)?.toDouble(),
      nfSaturatedFat: (json['nf_saturated_fat'] as num?)?.toDouble(),
      nfCholesterol: (json['nf_cholesterol'] as num?)?.toDouble(),
      nfSodium: (json['nf_sodium'] as num?)?.toDouble(),
      nfTotalCarbohydrate: (json['nf_total_carbohydrate'] as num?)?.toDouble(),
      nfDietaryFiber: (json['nf_dietary_fiber'] as num?)?.toDouble(),
      nfSugars: (json['nf_sugars'] as num?)?.toDouble(),
      nfProtein: (json['nf_protein'] as num?)?.toDouble(),
      nfPotassium: (json['nf_potassium'] as num?)?.toDouble(),
      nfP: (json['nf_p'] as num?)?.toDouble(),
      consumedAt: json['consumed_at'] as String?,
      source: json['source'] as int?,
      ndbNo: json['ndb_no'] as int?,
      mealType: json['meal_type'] as int?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      altMeasures: (json['alt_measures'] as List<dynamic>?)
          ?.map((e) => AltMeasure.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['is_favorite'] as bool?,
    );

Map<String, dynamic> _$FoodCommonToJson(FoodCommon instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'brand_name': instance.brandName,
      'serving_qty': instance.servingQty,
      'serving_unit': instance.servingUnit,
      'serving_weight_grams': instance.servingWeightGrams,
      'nf_calories': instance.nfCalories,
      'nf_total_fat': instance.nfTotalFat,
      'nf_saturated_fat': instance.nfSaturatedFat,
      'nf_cholesterol': instance.nfCholesterol,
      'nf_sodium': instance.nfSodium,
      'nf_total_carbohydrate': instance.nfTotalCarbohydrate,
      'nf_dietary_fiber': instance.nfDietaryFiber,
      'nf_sugars': instance.nfSugars,
      'nf_protein': instance.nfProtein,
      'nf_potassium': instance.nfPotassium,
      'nf_p': instance.nfP,
      'consumed_at': instance.consumedAt,
      'source': instance.source,
      'ndb_no': instance.ndbNo,
      'meal_type': instance.mealType,
      'photo': instance.photo,
      'alt_measures': instance.altMeasures,
      'is_favorite': instance.isFavorite,
    };
