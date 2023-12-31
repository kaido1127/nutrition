import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/alt_measure.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';

part 'food_common.g.dart';

@JsonSerializable()
class FoodCommon {
  @JsonKey(name: 'food_name')
  String? foodName;
  @JsonKey(name: 'brand_name')
  String? brandName;
  @JsonKey(name: 'serving_qty')
  double? servingQty;
  @JsonKey(name: 'serving_unit')
  String? servingUnit;
  @JsonKey(name: 'serving_weight_grams')
  double? servingWeightGrams;
  @JsonKey(name: 'nf_calories')
  double? nfCalories;
  @JsonKey(name: 'nf_total_fat')
  double? nfTotalFat;
  @JsonKey(name: 'nf_saturated_fat')
  double? nfSaturatedFat;
  @JsonKey(name: 'nf_cholesterol')
  double? nfCholesterol;
  @JsonKey(name: 'nf_sodium')
  double? nfSodium;
  @JsonKey(name: 'nf_total_carbohydrate')
  double? nfTotalCarbohydrate;
  @JsonKey(name: 'nf_dietary_fiber')
  double? nfDietaryFiber;
  @JsonKey(name: 'nf_sugars')
  double? nfSugars;
  @JsonKey(name: 'nf_protein')
  double? nfProtein;
  @JsonKey(name: 'nf_potassium')
  double? nfPotassium;
  @JsonKey(name: 'nf_p')
  double? nfP;
  @JsonKey(name: 'consumed_at')
  String? consumedAt;
  int? source;
  @JsonKey(name: 'ndb_no')
  int? ndbNo;
  @JsonKey(name: 'meal_type')
  int? mealType;
  @JsonKey(name: 'photo')
  Photo? photo;
  @JsonKey(name: 'alt_measures')
  List<AltMeasure>? altMeasures;
  @JsonKey(name: 'is_favorite')
  bool? isFavorite;

  FoodCommon({
    this.foodName,
    this.brandName,
    this.servingQty,
    this.servingUnit,
    this.servingWeightGrams,
    this.nfCalories,
    this.nfTotalFat,
    this.nfSaturatedFat,
    this.nfCholesterol,
    this.nfSodium,
    this.nfTotalCarbohydrate,
    this.nfDietaryFiber,
    this.nfSugars,
    this.nfProtein,
    this.nfPotassium,
    this.nfP,
    this.consumedAt,
    this.source,
    this.ndbNo,
    this.mealType,
    this.photo,
    this.altMeasures,
    this.isFavorite,
  });

  factory FoodCommon.fromJson(Map<String, dynamic> json) =>
      _$FoodCommonFromJson(json);
  Map<String, dynamic> toJson() => _$FoodCommonToJson(this);

}
