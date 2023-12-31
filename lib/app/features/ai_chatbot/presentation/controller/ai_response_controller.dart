import 'package:nutritrion/app/features/ai_chatbot/data/repository/ai_chatbot_repository_provider.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/controller/chat_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_response_controller.g.dart';

@riverpod
class AIResponseController extends _$AIResponseController {
  @override
  Future<BaseMessageEntity?> build() async {
    return null;
  }

  Future<BaseMessageEntity> getAIResponse({required String msg}) async {
    //Get current chat list
    List<BaseMessageEntity> currentList = ref.read(chatControllerProvider);

    //Change state to Loading
    state = const AsyncLoading();
    try {
      //Send message with last 6 elements
      BaseMessageEntity newResponse =
          await ref.read(aiChatbotRepositoryProvider).sendMessage(listMessageEntity: currentList);
      //Change state to AsyncData of newest response
      state = AsyncData(newResponse);

      return newResponse;
    } on Exception catch (e, stackTrace) {
      //Change state to AsyncError if has
      state = AsyncError(e, stackTrace);
      return Future.error(e);
    }
  }
}
