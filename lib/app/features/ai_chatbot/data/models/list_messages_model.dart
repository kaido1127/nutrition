import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/models/message_model.dart';

part 'list_messages_model.g.dart';

@JsonSerializable()
class ListMessagesModel{
  final List<MessageModel> listMessages;

  ListMessagesModel({required this.listMessages});

  factory ListMessagesModel.fromJson(Map<String, dynamic> json) => _$ListMessagesModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListMessagesModelToJson(this);
}