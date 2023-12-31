import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/models/food_blacklist.dart';

class FoodBlacklistConverter extends TypeConverter<FoodBlacklist, String> {
  const FoodBlacklistConverter();

  @override
  FoodBlacklist fromSql(String fromDb) {
    return FoodBlacklist.fromJson(jsonDecode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(FoodBlacklist value) {
    return jsonEncode(value.toJson());
  }
}
