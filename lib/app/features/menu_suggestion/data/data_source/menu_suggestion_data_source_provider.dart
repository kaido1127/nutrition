import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/application/dio_ai_chatbot_instance_provider.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/data_source/menu_suggestion_local_data_source.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/data_source/menu_suggestion_remote_data_source.dart';

final menuSuggestionRemoteDataSourceProvider =
    Provider.autoDispose<MenuSuggestionRemoteDataSource>(
        (ref) => MenuSuggestionRemoteDataSource.create(ref.watch(dioAIChatbotInstanceProvider)));

final menuSuggestionLocalDataSourceProvider =
    Provider.autoDispose<AIMenuSuggestionLocalDataSource>(
        (ref) => AIMenuSuggestionLocalDataSource.create(ref.watch(appDatabaseProvider)));
