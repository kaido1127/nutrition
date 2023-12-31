import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/models/country_local.dart';

class CountryConverter extends TypeConverter<CountryLocal, String> {
  const CountryConverter();

  @override
  CountryLocal fromSql(String fromDb) {
    return CountryLocal.fromJson(jsonDecode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(CountryLocal value) {
    return jsonEncode(value.toJson());
  }
}
