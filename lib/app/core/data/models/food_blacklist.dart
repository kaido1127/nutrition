import 'package:json_annotation/json_annotation.dart';

part 'food_blacklist.g.dart';

@JsonSerializable()
class FoodBlacklist {

  List<String> blacklist;
  FoodBlacklist({
    required this.blacklist,
  });

  factory FoodBlacklist.fromJson(Map<String, dynamic> json) => _$FoodBlacklistFromJson(json);
  Map<String, dynamic> toJson() => _$FoodBlacklistToJson(this);
}