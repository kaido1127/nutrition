
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/data/data_soucre/view_list_favorite_foods_data_soucre_provider.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/data/repository/view_list_favorite_foods_repository.dart';

final viewListFavoriteFoodRepositoryProvider = Provider.autoDispose<ViewListFavoriteFoodsRepository>((ref) {
  final repository = ViewListFavoriteFoodsRepository.create(ref.watch(viewListFavoriteFoodsLocalDataSourceProvider));

  ref.onDispose(() {
    repository.dispose();
  });

  return repository;
});