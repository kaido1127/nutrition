part of 'base_message_entity.dart';


class AITextMessageEntity extends BaseMessageEntity {
  final int funcType = 0;

  AITextMessageEntity({required String answer, bool isUser = false})
      : super(answer: answer, isUser: isUser);

  factory AITextMessageEntity.fromMessageModel(MessageModel messageModel) => AITextMessageEntity(
      answer: jsonDecode(messageModel.content)["AIResponse"]["answer"]);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'func_type': funcType,
        'answer': answer,
      };

  @override
  MessageModel toMessageModel() => MessageModel(role: "assistant", content: toJson().toString());
}
