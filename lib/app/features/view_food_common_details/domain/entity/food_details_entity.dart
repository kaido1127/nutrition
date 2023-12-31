import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/alt_measure.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';
import 'package:nutritrion/app/common/data_source_type.dart';


part 'food_details_entity.g.dart';


@JsonSerializable()
class FoodDetailsEntity {
  @JsonKey(name: 'food_name')
  String? foodName;
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
  Photo? photo;
  List<AltMeasure>? altMeasures;
  DataSourceType dataSourceType;
  bool isFavorite;

  FoodDetailsEntity({
     required this.foodName,
    required this.servingQty,
    required this.servingUnit,
    required this.servingWeightGrams,
    required this.nfCalories,
    required this.nfTotalFat,
    required this.nfCholesterol,
    required  this.nfSodium,
    required  this.nfTotalCarbohydrate,
    required this.nfDietaryFiber,
    required this.nfSugars,
    required this.nfProtein,
    required this.nfPotassium,
    required this.photo,
    required this.altMeasures,
    required this.dataSourceType,
    required this.isFavorite
  });

  factory FoodDetailsEntity.loadFromFoodCommon(FoodCommon foodCommon,bool isFavorite) =>FoodDetailsEntity(
      foodName: foodCommon.foodName,
      servingQty: foodCommon.servingQty,
      servingUnit: foodCommon.servingUnit,
      servingWeightGrams: foodCommon.servingWeightGrams,
      nfCalories: foodCommon.nfCalories,
      nfTotalFat: foodCommon.nfTotalFat,
      nfCholesterol: foodCommon.nfCholesterol,
      nfSodium: foodCommon.nfSodium,
      nfTotalCarbohydrate: foodCommon.nfTotalCarbohydrate,
      nfDietaryFiber: foodCommon.nfDietaryFiber,
      nfSugars: foodCommon.nfSugars,
      nfProtein: foodCommon.nfProtein,
      nfPotassium: foodCommon.nfPotassium,
      photo: foodCommon.photo,
      altMeasures: foodCommon.altMeasures,
      dataSourceType: DataSourceType.remote,
  isFavorite: isFavorite);

  factory FoodDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$FoodDetailsEntityToJson(this);
}
