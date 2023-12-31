import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/models/photo.dart';

part 'food_of_branded.g.dart';

@JsonSerializable()
class FoodOfBranded {
  @JsonKey(name: 'food_name')
  String? foodName;
  @JsonKey(name: 'serving_unit')
  String? servingUnit;
  @JsonKey(name: 'nix_brand_id')
  String? nixBrandId;
  @JsonKey(name: 'brand_name_item_name')
  String? brandNameItemName;
  @JsonKey(name: 'serving_qty')
  double? servingQty;
  @JsonKey(name: 'nf_calories')
  double? nfCalories;
  @JsonKey(name: 'photo')
  Photo? photo;
  @JsonKey(name: 'brand_name')
  String? brandName;
  int? region;
  @JsonKey(name: 'brand_type')
  int? brandType;
  @JsonKey(name: 'nix_item_id')
  String? nixItemId;
  String? locale;

  FoodOfBranded({
    this.foodName,
    this.servingUnit,
    this.nixBrandId,
    this.brandNameItemName,
    this.servingQty,
    this.nfCalories,
    this.photo,
    this.brandName,
    this.region,
    this.brandType,
    this.nixItemId,
    this.locale,
  });

  factory FoodOfBranded.fromJson(Map<String, dynamic> json) =>
      _$FoodOfBrandedFromJson(json);
  Map<String, dynamic> toJson() => _$FoodOfBrandedToJson(this);
}
