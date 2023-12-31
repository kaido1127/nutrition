
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/menu_suggestion_model.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/models/message_model.dart';

part 'ai_chatbot_remote_data_source_impl.dart';

abstract interface class AIChatbotRemoteDataSource {
  Future<MessageModel> sendMessage({required List<MessageModel> listMessagesModel});

  factory AIChatbotRemoteDataSource.create(Dio dio) => _AIChatbotRemoteDataSourceImpl(dio: dio);
}
