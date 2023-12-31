// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodDetailsEntity _$FoodDetailsEntityFromJson(Map<String, dynamic> json) =>
    FoodDetailsEntity(
      foodName: json['food_name'] as String?,
      servingQty: (json['serving_qty'] as num?)?.toDouble(),
      servingUnit: json['serving_unit'] as String?,
      servingWeightGrams: (json['serving_weight_grams'] as num?)?.toDouble(),
      nfCalories: (json['nf_calories'] as num?)?.toDouble(),
      nfTotalFat: (json['nf_total_fat'] as num?)?.toDouble(),
      nfCholesterol: (json['nf_cholesterol'] as num?)?.toDouble(),
      nfSodium: (json['nf_sodium'] as num?)?.toDouble(),
      nfTotalCarbohydrate: (json['nf_total_carbohydrate'] as num?)?.toDouble(),
      nfDietaryFiber: (json['nf_dietary_fiber'] as num?)?.toDouble(),
      nfSugars: (json['nf_sugars'] as num?)?.toDouble(),
      nfProtein: (json['nf_protein'] as num?)?.toDouble(),
      nfPotassium: (json['nf_potassium'] as num?)?.toDouble(),
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      altMeasures: (json['altMeasures'] as List<dynamic>?)
          ?.map((e) => AltMeasure.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataSourceType:
          $enumDecode(_$DataSourceTypeEnumMap, json['dataSourceType']),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$FoodDetailsEntityToJson(FoodDetailsEntity instance) =>
    <String, dynamic>{
      'food_name': instance.foodName,
      'serving_qty': instance.servingQty,
      'serving_unit': instance.servingUnit,
      'serving_weight_grams': instance.servingWeightGrams,
      'nf_calories': instance.nfCalories,
      'nf_total_fat': instance.nfTotalFat,
      'nf_cholesterol': instance.nfCholesterol,
      'nf_sodium': instance.nfSodium,
      'nf_total_carbohydrate': instance.nfTotalCarbohydrate,
      'nf_dietary_fiber': instance.nfDietaryFiber,
      'nf_sugars': instance.nfSugars,
      'nf_protein': instance.nfProtein,
      'nf_potassium': instance.nfPotassium,
      'photo': instance.photo,
      'altMeasures': instance.altMeasures,
      'dataSourceType': _$DataSourceTypeEnumMap[instance.dataSourceType]!,
      'isFavorite': instance.isFavorite,
    };

const _$DataSourceTypeEnumMap = {
  DataSourceType.local: 'local',
  DataSourceType.remote: 'remote',
};
