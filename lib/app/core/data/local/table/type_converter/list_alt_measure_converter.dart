import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/models/list_alt_measure.dart';

class ListAltMeasureConverter extends TypeConverter<ListAltMeasure, String> {
  const ListAltMeasureConverter();

  @override
  ListAltMeasure fromSql(String fromDb) {
    return ListAltMeasure.fromJson(jsonDecode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(ListAltMeasure value) {
    return jsonEncode(value.toJson());
  }
}