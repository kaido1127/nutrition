import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/table/type_converter/alt_measure_converter.dart';

class Dish extends Table {
  IntColumn get id => integer()();
  TextColumn get foodName => text().customConstraint('REFERENCES favorite_food_common(food_name)').nullable()();
  IntColumn get mealType => integer()();
  DateTimeColumn get date => dateTime()();
  BoolColumn get isEaten => boolean().withDefault(const Constant(false))();

  //Add Serving
  TextColumn get altMeasure => text().map(const AltMeasureConverter()).nullable()();
  IntColumn get servingQty => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
