part of 'ai_chatbot_repository.dart';

const String _api = 'https://api.openai.com/v1/chat/completions';

class _AIChatbotRepositoryImpl implements AIChatbotRepository {
  final AIChatbotRemoteDataSource _remoteDataSource;

  _AIChatbotRepositoryImpl({required AIChatbotRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<BaseMessageEntity> sendMessage(
      {required List<BaseMessageEntity> listMessageEntity}) async {
    try {
      final List<MessageModel> list =
          listMessageEntity.map((messageEntity) => messageEntity.toMessageModel()).toList();

      // Get response
      final MessageModel newMessage = await _remoteDataSource.sendMessage(listMessagesModel: list);
      return BaseMessageEntity.fromMessageModel(newMessage);
    } catch (e) {
      return Future.error(e);
    }
  }
}
