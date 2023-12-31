import 'dart:convert';

import 'package:nutritrion/app/features/ai_chatbot/data/models/message_model.dart';

part 'user_message_entity.dart';

part 'ai_text_message_entity.dart';

part 'ai_add_foods_message_entity.dart';

sealed class BaseMessageEntity {
  final String answer;
  final bool isUser;

  BaseMessageEntity({required this.answer, required this.isUser});

  factory BaseMessageEntity.fromMessageModel(MessageModel messageModel) {
    bool isUserFromModel = (messageModel.role == "user");

    if (isUserFromModel) {
      return UserMessageEntity.fromMessageModel(messageModel);
    } else {
      int funcType = jsonDecode(messageModel.content)["AIResponse"]["func_type"];
      if (funcType == 0) {
        return AITextMessageEntity.fromMessageModel(messageModel);
      } else {
        return AIAddFoodsMessageEntity.fromMessageModel(messageModel);
      }
    }
  }

  MessageModel toMessageModel();
}
