
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/data/data_soucre/view_list_favorite_foods_local_data_source.dart';

final viewListFavoriteFoodsLocalDataSourceProvider = Provider.autoDispose<ViewListFavoriteFoodsLocalDataSource>((ref) {
  final localDataSourceProvider = ViewListFavoriteFoodsLocalDataSource.create(ref.watch(appDatabaseProvider));

  return localDataSourceProvider;
});