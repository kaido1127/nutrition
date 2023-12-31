// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_blacklist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodBlacklist _$FoodBlacklistFromJson(Map<String, dynamic> json) =>
    FoodBlacklist(
      blacklist:
          (json['blacklist'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FoodBlacklistToJson(FoodBlacklist instance) =>
    <String, dynamic>{
      'blacklist': instance.blacklist,
    };
