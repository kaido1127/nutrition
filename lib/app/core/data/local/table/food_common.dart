import 'package:drift/drift.dart';

import 'type_converter/list_alt_measure_converter.dart';

class FoodCommonLocal extends Table {
  TextColumn get foodName => text().named('food_name')();
  TextColumn get brandName => text().named('brand_name').nullable()();
  RealColumn get servingQty => real().nullable()();
  TextColumn get servingUnit => text().named('serving_unit').nullable()();
  RealColumn get servingWeightGrams => real().named('serving_weight_grams').nullable()();
  RealColumn get nfCalories => real().named('nf_calories').nullable()();
  RealColumn get nfTotalFat => real().named('nf_total_fat').nullable()();
  RealColumn get nfSaturatedFat => real().named('nf_saturated_fat').nullable()();
  RealColumn get nfCholesterol => real().named('nf_cholesterol').nullable()();
  RealColumn get nfSodium => real().named('nf_sodium').nullable()();
  RealColumn get nfTotalCarbohydrate => real().named('nf_total_carbohydrate').nullable()();
  RealColumn get nfDietaryFiber => real().named('nf_dietary_fiber').nullable()();
  RealColumn get nfSugars => real().named('nf_sugars').nullable()();
  RealColumn get nfProtein => real().named('nf_protein').nullable()();
  RealColumn get nfPotassium => real().named('nf_potassium').nullable()();
  RealColumn get nfP => real().named('nf_p').nullable()();
  TextColumn get consumedAt => text().named('consumed_at').nullable()();
  IntColumn get source => integer().nullable()();
  IntColumn get ndbNo => integer().nullable()();
  IntColumn get mealType => integer().nullable()();
  TextColumn get photoUrl => text().named('photo_url')();
  TextColumn get listAltMeasure => text().map(const ListAltMeasureConverter()).nullable()();
  BoolColumn get isFavoriteFood => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {foodName};
}


