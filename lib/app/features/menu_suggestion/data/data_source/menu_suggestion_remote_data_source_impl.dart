part of 'menu_suggestion_remote_data_source.dart';

const String _api = 'https://api.openai.com/v1/chat/completions';

class _MenuSuggestionRemoteDataSourceImpl implements MenuSuggestionRemoteDataSource {
  final Dio _dio;

  _MenuSuggestionRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

//   @override
//   Future<MenuSuggestionModel> getMenuSuggestionResponse(
//       double totalCalorieOfDay, String countryName) async {
//     try {
//       print('[AIMenuDataSource] Start POST.....');
//
//       const String listFoodJsonSample =
//           '[{"food_name" : String , "serving_unit" : StringWithMostCommonServingUnit , "serving_quantity" : int , "calorie" : double},...]';
//
//       String calorieOfMealRequest = MealType.values
//           .map((mealType) =>
//               "${mealType.name}:${calorieRatioOfMeal(mealTypeToInt(mealType)) * totalCalorieOfDay}")
//           .toList()
//           .join(",");
//
//       final response = await _dio.post(_api, data: {
//         'model': 'gpt-3.5-turbo-1106',
//         'response_format': {'type': 'json_object'},
//         "messages": [
//           {
//             "role": "system",
//             "content":
//                 '{ "meals": { "breakfast": $listFoodJsonSample, "lunch": $listFoodJsonSample, "dinner": $listFoodJsonSample, "snack": $listFoodJsonSample }'
//           },
//           {
//             "role": "user",
//             "content":
//                 'JSON menu for one day with $countryName cuisine and total calories of each meal is $calorieOfMealRequest cal ',
//           },
//         ],
//       });
//
//       print(response.data);
//       final List<dynamic> choice = response.data["choices"];
//       final menuResponseJson = jsonDecode(choice.first["message"]["content"]);
//       MenuResponse menuResponse = MenuResponse.fromJson(menuResponseJson);
//
//       return menuResponse.menu;
//     } on DioException catch (e) {
//       log("[AIMenuSuggestion] StatusCode ${e.type.index} -Error ${e.message.toString()}");
//       return Future.error(e);
//     }
//   }
// //
// //
// //     final List<dynamic> choice = response.data["choices"];
// //     final menuResponseJson = jsonDecode(choice.first["message"]["content"]);
// //     MenuResponse menuResponse = MenuResponse.fromJson(menuResponseJson);
// //
// //     return menuResponse.menu;
// //   } on Exception catch (e) {
// //     return Future.error(e);
// //   }
// // }

@override
Future<MenuSuggestionModel> getMenuSuggestionResponse(
    double totalCalorieOfDay, String countryName) async {
  try {
    print('[AIMenuDataSource] Start POST.....');

    Map<String, dynamic> defineDish = {
      "type": "object",
      "properties": {
        "food_name": {"type": "string", "description": "Name of the food"},
        "serving_unit": {"type": "string", "description": "Serving unit of the food"},
        "serving_quantity": {"type": "integer", "description": "Serving quantity of the food"},
        "calorie": {"type": "number", "description": "Calories of the food"}
      },
      "description": "Food with with $countryName cuisine"
    };

    Map<String, dynamic> defineMeal = {
      "type": "object",
      "properties": {
        "foods": {"type": "array", "items": defineDish, "description": "Foods for meal"}
      },
      "description": "Meal information"
    };

    final startTime = DateTime.now().second;
    final response = await _dio.post(_api, data: {
      'model': 'gpt-3.5-turbo-1106',
      "messages": [
        {
          "role": "user",
          "content": 'Suggest me the menu',
        },
      ],
      "tool_choice": "auto",
      "max_tokens":1000,

      "tools": [
        {
          "type": "function",
          "function": {
            "name": "suggest_menu",
            "description":
                'Provide meal suggestions so that the total calories of breakfast, lunch, dinner, snack equal $totalCalorieOfDay',
            "parameters": {
              "type": "object",
              "properties": {
                "meals": {
                  "type": "object",
                  "properties": {
                    "breakfast": defineMeal,
                    "lunch": defineMeal,
                    "dinner": defineMeal,
                    "snack": defineMeal
                  },
                  "description": "The total calories of the meals are $totalCalorieOfDay"
                }
              },
            }
          }
        }
      ],
    });

    print("[Time] ${DateTime.now().second - startTime}");


    log("[AIMenuSuggestion] ${response.data}");


    final List<dynamic> choice = response.data["choices"];
    final menuResponseJson = jsonDecode(choice.first["message"]["content"]);
    MenuResponse menuResponse = MenuResponse.fromJson(menuResponseJson);

    return menuResponse.menu;
  } on DioException catch (e) {

    log("[AIMenuSuggestion] StatusCode ${e.type.index} -Error ${e.message.toString()}");
    return Future.error(e);
  }
}
}
