// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMessagesModel _$ListMessagesModelFromJson(Map<String, dynamic> json) =>
    ListMessagesModel(
      listMessages: (json['listMessages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListMessagesModelToJson(ListMessagesModel instance) =>
    <String, dynamic>{
      'listMessages': instance.listMessages,
    };
