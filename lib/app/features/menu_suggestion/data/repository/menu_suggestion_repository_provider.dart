import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/data_source/menu_suggestion_data_source_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/repository/menu_suggestion_repository.dart';

final menuSuggestionRepositoryProvider = Provider.autoDispose<MenuSuggestionRepository>(
    (ref) => MenuSuggestionRepository.create(ref.watch(menuSuggestionRemoteDataSourceProvider),ref.watch(menuSuggestionLocalDataSourceProvider)));
