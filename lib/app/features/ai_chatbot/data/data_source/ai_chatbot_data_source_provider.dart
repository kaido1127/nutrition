import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/application/dio_ai_chatbot_instance_provider.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/data_source/ai_chatbot_remote_data_source.dart';

final aiChatbotRemoteDataSourceProvider = Provider.autoDispose<AIChatbotRemoteDataSource>(
    (ref) => AIChatbotRemoteDataSource.create(ref.watch(dioAIChatbotInstanceProvider)));
