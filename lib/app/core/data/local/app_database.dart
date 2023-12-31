import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:nutritrion/app/core/data/local/table/dish.dart';
import 'package:nutritrion/app/core/data/local/table/food_common.dart';
import 'package:nutritrion/app/core/data/local/table/meal_menu_suggestion.dart';
import 'package:nutritrion/app/core/data/local/table/user.dart';
import 'package:nutritrion/app/core/data/models/country_local.dart';
import 'package:nutritrion/app/core/data/models/list_food_suggestion_entity.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/meal_suggestion_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../models/alt_measure.dart';
import '../models/list_alt_measure.dart';
import 'table/type_converter/alt_measure_converter.dart';
import 'table/type_converter/country_converter.dart';
import 'table/type_converter/list_alt_measure_converter.dart';
import 'table/type_converter/meal_suggestion_entity_converter.dart';


part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'nutrition.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [FoodCommonLocal,Dish,User,MealMenuSuggestion])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

}
