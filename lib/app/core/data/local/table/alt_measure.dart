import 'package:drift/drift.dart';

@DataClassName('AltMeasure')
class AltMeasuresLocal extends Table {
  TextColumn get measure => text()();
  IntColumn get seq => integer().nullable()();
  RealColumn get servingWeight => real().nullable()();
  RealColumn get qty => real().nullable()();


  @override
  Set<Column> get primaryKey => {measure,qty};
}
