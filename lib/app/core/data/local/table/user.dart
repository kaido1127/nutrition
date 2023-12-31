import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/table/type_converter/country_converter.dart';

class User extends Table{
  TextColumn get fullName => text()();
  IntColumn get joinDate => integer()();//millisecondSinceEpoch
  BoolColumn get sex => boolean()(); //men 1 , woman 0
  DateTimeColumn get birthDay => dateTime()();
  RealColumn get height => real()();
  RealColumn get weight => real()();
  IntColumn get activityLevel => integer()();
  IntColumn get completeWeeksTarget => integer()();
  RealColumn get weightTarget => real()();
  DateTimeColumn get startTimeTarget => dateTime()();
  TextColumn get country => text().map(const CountryConverter()).nullable()();


  @override
  Set<Column> get primaryKey => {joinDate};

}