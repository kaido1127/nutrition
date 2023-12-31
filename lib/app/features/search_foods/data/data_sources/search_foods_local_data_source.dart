
import 'dart:async';

import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';

part 'search_foods_local_data_source_impl.dart';

abstract interface class SearchFoodsLocalDataSource {
  Stream<List<FoodCommonLocalData>> searchFavorites(String query);

  factory SearchFoodsLocalDataSource.create(AppDatabase appDatabase) =>
      _SearchFoodsLocalDataSourceImpl(appDatabase: appDatabase);
}
