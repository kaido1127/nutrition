import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/models/list_food_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';

class ListFoodSuggestionEntityConverter extends TypeConverter<ListFoodSuggestionEntity, String> {
  const ListFoodSuggestionEntityConverter();

  @override
  ListFoodSuggestionEntity fromSql(String fromDb) {
    return ListFoodSuggestionEntity.fromJson(jsonDecode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(ListFoodSuggestionEntity value) {
    return jsonEncode(value.toJson());
  }
}
