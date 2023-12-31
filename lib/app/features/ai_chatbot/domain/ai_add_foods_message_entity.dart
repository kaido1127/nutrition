
part of 'base_message_entity.dart';

class AIAddFoodsMessageEntity extends BaseMessageEntity {
  final int funcType = 1;
  final List<String> foods;

  AIAddFoodsMessageEntity(
      {required String answer, bool isUser = false, required this.foods})
      : super(answer: answer, isUser: false);

  factory AIAddFoodsMessageEntity.fromMessageModel(MessageModel messageModel) {
    return AIAddFoodsMessageEntity(
        answer: jsonDecode(messageModel.content)["AIResponse"]["answer"],
        foods: (jsonDecode(messageModel.content)["AIResponse"]["foods"] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        isUser: false);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'func_type': funcType,
        'answer': answer,
        'foods': foods,
      };

  @override
  MessageModel toMessageModel() => MessageModel(role: "assistant", content: toJson().toString());
}
