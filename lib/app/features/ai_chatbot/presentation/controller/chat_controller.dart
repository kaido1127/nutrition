import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/controller/ai_response_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_controller.g.dart';

@riverpod
class ChatController extends _$ChatController {
  @override
  List<BaseMessageEntity> build() {
    return [];
  }

  void sendMessage(String msg) {
    UserMessageEntity newMessage = UserMessageEntity(answer: msg);
    //Add msg of user to current chat list
    state = [...state, newMessage];
    // Get response and add to chat list if has value
    ref
        .read(aIResponseControllerProvider.notifier)
        .getAIResponse(msg: msg)
        .then((value) => state = [...state, value]);
  }
}
