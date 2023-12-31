// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishTaskEntity _$DishTaskEntityFromJson(Map<String, dynamic> json) =>
    DishTaskEntity(
      id: json['id'] as int?,
      foodName: json['food_name'] as String?,
      mealType: json['meal_type'] as int?,
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String),
      isEaten: json['is_eaten'] as bool?,
      photo: json['photo'] as String?,
      servingQty: json['serving_qty'] as int?,
      altMeasure: json['alt_measure'] == null
          ? null
          : AltMeasure.fromJson(json['alt_measure'] as Map<String, dynamic>),
      servingWeightGrams: (json['serving_weight_grams'] as num?)?.toDouble(),
      nfCalories: (json['nf_calories'] as num?)?.toDouble(),
      nfProtein: (json['nf_protein'] as num?)?.toDouble(),
      nfSugars: (json['nf_sugars'] as num?)?.toDouble(),
      nfTotalFat: (json['nf_total_fat'] as num?)?.toDouble(),
      nfTotalCarbohydrate: (json['nf_total_carbohydrate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DishTaskEntityToJson(DishTaskEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food_name': instance.foodName,
      'meal_type': instance.mealType,
      'date_time': instance.dateTime?.toIso8601String(),
      'is_eaten': instance.isEaten,
      'photo': instance.photo,
      'serving_weight_grams': instance.servingWeightGrams,
      'nf_calories': instance.nfCalories,
      'nf_total_fat': instance.nfTotalFat,
      'nf_total_carbohydrate': instance.nfTotalCarbohydrate,
      'nf_protein': instance.nfProtein,
      'nf_sugars': instance.nfSugars,
      'serving_qty': instance.servingQty,
      'alt_measure': instance.altMeasure,
    };
