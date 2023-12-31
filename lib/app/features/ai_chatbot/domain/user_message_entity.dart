part of 'base_message_entity.dart';

class UserMessageEntity extends BaseMessageEntity {
  UserMessageEntity({required String answer, bool isUser = true})
      : super(answer: answer, isUser: isUser);

  factory UserMessageEntity.fromMessageModel(MessageModel messageModel) =>
      UserMessageEntity(answer: messageModel.content);

  @override
  MessageModel toMessageModel() => MessageModel(role: "user", content: answer);
}
