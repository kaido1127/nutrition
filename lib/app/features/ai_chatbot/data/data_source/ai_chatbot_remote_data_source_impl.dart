part of 'ai_chatbot_remote_data_source.dart';

const String _api = 'https://api.openai.com/v1/chat/completions';

class _AIChatbotRemoteDataSourceImpl implements AIChatbotRemoteDataSource {
  final Dio _dio;

  _AIChatbotRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<MessageModel> sendMessage({required List<MessageModel> listMessagesModel}) async {
    const String defineRoles =
        "You are a nutrition, health assistant and help users add dishes to meals, suggesting foods for them";
    /*const String responseTopics =
        "only answer questions about nutrition, health and help users add dishes to meals, suggesting foods for them";*/
    const String defineResponseStruct =
        '{"AIResponse": {"func_type":int ,"answer":StringWithUserLanguage,"foods":["StringFoodNameConvertToEnglishLanguage","StringFoodNameConvertToEnglishLanguage",...]}}}';
    const String responseIfInvalidQuestion =
        'if the question is not related please response with func_type 0 and "answer" : "I cannot answer unrelated questions" ,"foods" : []';
    const String defineFuncType_0 =
        'func_type is 0 if the user asks a normal question then "answer" is your answer,"foods" : []';
    const String defineFuncType_1 =
        'func_type is 1 if the user requests dishes to add to their meal or needs you to suggest meals, then “foods” is a list dishes that users ask you to add or need your suggestions for,"StringFoodNameConvertToEnglishLanguage" is not too long and is English language, "foods" has a maximum of 5 elements,the "answer" are tips and notes when eating foods and "answer" is the language the user uses';
    try {
      listMessagesModel.insert(
          0,
          MessageModel(
              role: 'system',
              content:
                  '$defineRoles, $responseIfInvalidQuestion .Generate JSON response: $defineResponseStruct,$defineFuncType_0, $defineFuncType_1'));
      final response = await _dio.post(_api, data: {
        'model': 'gpt-3.5-turbo-1106',
        'response_format': {'type': 'json_object'},
        "messages": listMessagesModel,

        "max_tokens": 400,
      });

      print("[AIChatbot] Response ${response.data}");

      final List<dynamic> choice = response.data["choices"];
      final result = MessageModel.fromJson(choice.first["message"]);

      return result;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
  // @override
  // Future<MessageModel> sendMessage({required List<MessageModel> listMessagesModel}) async {
  //   final food = {
  //     "type": "String",
  //     "description":
  //         "foods that users ask you to add to their meals or ask you to recommend for them"
  //   };
  //   const String defineRoles =
  //       "You are a nutrition, health assistant and help users add dishes to meals, suggesting foods for them";
  //   try {
  //     //listMessagesModel.insert(0, MessageModel(role: 'system', content: defineRoles));
  //     final response = await _dio.post(_api, data: {
  //       'model': 'gpt-3.5-turbo-1106',
  //       //'response_format': {'type': 'json_object'},
  //       "messages": listMessagesModel,
  //       "tool_choice": "auto",
  //       "tools": [
  //         {
  //           "type": "function",
  //           "function": {
  //             "name": "add_foods",
  //             "description": defineRoles,
  //             "parameters": {
  //               "type": "object",
  //               "properties": {
  //                 "answer": {"type": "string", "description": "Your answer to the user's question"},
  //                 "foods": {
  //                   "type": "array",
  //                   "items": {"type": "string"},
  //                   "description":
  //                       "foods that users ask you to add to their meals or ask you to recommend for them"
  //                 },
  //               },
  //             }
  //           }
  //         }
  //       ],
  //     });
  //
  //     print("[AIChatbot] Response ${response.data}");
  //
  //     final List<dynamic> choice = response.data["choices"];
  //     final result = MessageModel.fromJson(choice.first["message"]);
  //
  //     return result;
  //   } on Exception catch (e) {
  //     return Future.error(e);
  //   }
  // }
}

//Json
/* {
  "meals": {
    "breakfast": [
      "1 omelette",
      "1 Greek Yogurt Parfait",
      "1 Avocado Toast"
    ],
    "lunch": [
      "1 Grilled Chicken Salad",
      "1 Quinoa Bowl",
      "1 Turkey and Veggie Wrap"
    ],
    "dinner": [
      "1 Salmon with Asparagus",
      "1 Vegetable Stir-Fry",
      "1 Pasta Primavera"
    ],
    "snack": [
      "1 Mixed Nuts",
      "1 Fruit Smoothie",
      "1 Cottage Cheese with Pineapple"
    ]
  }
}
*/
