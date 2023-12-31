import 'package:nutritrion/app/features/ai_chatbot/data/data_source/ai_chatbot_remote_data_source.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/models/message_model.dart';

part 'ai_chatbot_repository_impl.dart';

abstract interface class AIChatbotRepository {
  Future<BaseMessageEntity> sendMessage({required List<BaseMessageEntity> listMessageEntity});


  factory AIChatbotRepository.create(AIChatbotRemoteDataSource remoteDataSource) =>
      _AIChatbotRepositoryImpl(remoteDataSource: remoteDataSource);
}
