import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/models/alt_measure.dart';

class AltMeasureConverter extends TypeConverter<AltMeasure, String> {
  const AltMeasureConverter();

  @override
  AltMeasure fromSql(String fromDb) {
    return AltMeasure.fromJson(jsonDecode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(AltMeasure value) {
    return jsonEncode(value.toJson());
  }
}