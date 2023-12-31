import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:nutritrion/app/features/ai_chatbot/domain/base_message_entity.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/controller/ai_response_controller.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/controller/chat_controller.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/widget/ai_add_food_chat_card.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/widget/ai_text_chat_card.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/widget/user_chat_card.dart';
import 'package:nutritrion/app/splash_page.dart';

class AIChatBotPage extends ConsumerStatefulWidget {
  const AIChatBotPage({super.key});

  @override
  ConsumerState<AIChatBotPage> createState() => _AIChatBotPageState();
}

class _AIChatBotPageState extends ConsumerState<AIChatBotPage> {
  final TextEditingController _textEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listChat = ref.watch(chatControllerProvider);
    final lastResponseAsyncValue = ref.watch(aIResponseControllerProvider);

    //Scroll to the end of listView if listView Changes
    ref.listen(chatControllerProvider, (previous, next) {
      _scrollController.animateTo(
        _scrollController.position.extentTotal,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Nutritionist"),
      ),
      body: Column(
        children: [
          Expanded(
            child: (listChat.isNotEmpty)
                ? ListView.builder(
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      final BaseMessageEntity messageEntity = listChat[index];
                      return switch (messageEntity) {
                        UserMessageEntity() => UserChatCard(userMessageEntity: messageEntity),
                        AITextMessageEntity() => AITextChatCard(aiTextMessageEntity: messageEntity),
                        AIAddFoodsMessageEntity() =>
                          AIAddFoodChatCard(aiAddFoodsMessageEntity: messageEntity, id: index),
                      };
                    },
                    itemCount: listChat.length)
                : Center(
                    child: SizedBox(
                        width: deviceSize.width * 0.8,
                        child: Lottie.asset('asset/lottie/ai_chatbot.json')),
                  ),
          ),
          Material(
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                readOnly: lastResponseAsyncValue.isLoading || lastResponseAsyncValue.hasError,
                style: const TextStyle(color: Colors.white),
                controller: _textEditingController,
                cursorColor: Colors.white,
                onSubmitted: (value) {
                  ref
                      .read(chatControllerProvider.notifier)
                      .sendMessage(_textEditingController.text);
                  _textEditingController.clear();
                },
                onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                decoration: InputDecoration(
                  hintText: lastResponseAsyncValue.when(
                      data: (data) => "Ask something",
                      error: (e, st) => e.toString(),
                      loading: () => "Responding..."),
                  hintStyle: TextStyle(
                      color: (lastResponseAsyncValue.isLoading) ? Colors.white : Colors.white70),
                  border: InputBorder.none,
                  suffixIcon: lastResponseAsyncValue.when(
                      data: (data) {
                        return IconButton(
                            onPressed: () {
                              if (_textEditingController.text.isNotEmpty) {
                                ref
                                    .read(chatControllerProvider.notifier)
                                    .sendMessage(_textEditingController.text);
                                _textEditingController.clear();
                                FocusManager.instance.primaryFocus?.unfocus();
                              }
                            },
                            icon: const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.send,
                                  color: Colors.blue,
                                )));
                      },
                      error: (e, st) => const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.error,
                            color: Colors.red,
                          )),
                      loading: () => const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
