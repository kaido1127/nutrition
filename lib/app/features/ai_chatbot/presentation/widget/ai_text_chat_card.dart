
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';


class AITextChatCard extends ConsumerWidget {
  final AITextMessageEntity aiTextMessageEntity;

  const AITextChatCard({super.key, required this.aiTextMessageEntity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Material(
        color: Colors.lightBlue[50],
        child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.android,
                color: Colors.lightBlue,
              ),
            ),
            title: Text(
              aiTextMessageEntity.answer,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )));
  }
}
