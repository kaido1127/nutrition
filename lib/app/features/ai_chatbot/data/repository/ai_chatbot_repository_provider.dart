import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/data_source/ai_chatbot_data_source_provider.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/repository/ai_chatbot_repository.dart';

final aiChatbotRepositoryProvider = Provider.autoDispose(
    (ref) => AIChatbotRepository.create(ref.watch(aiChatbotRemoteDataSourceProvider)));
