import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// const String _appIdNutritionix = "e97b9d78";
// const String _appKeyNutritionix = "a860814c3a4a180fbb545d24b747bf7f";

const String _appIdNutritionix = "6023f47f";
const String _appKeyNutritionix = "8c128a947858f6b4fb28ec53dda4cd5d";

// const String _appIdNutritionix = "40998a0a";
// const String _appKeyNutritionix = "3ee971e83c7033e1725bf320fd699a36";


//Key nutritionix
// const String _appIdNutritionix = "345badb9";
// const String _appKeyNutritionix = "70f5b64b28228dccf00e6513947fc95a";

final dioNutritionixInstanceProvider = Provider.autoDispose<Dio>((ref) {
  final dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      options.headers.addAll({
        'x-app-id': _appIdNutritionix,
        'x-app-key': _appKeyNutritionix,
        'Content-Type': 'application/json',
      });
      return handler.next(options);
    },
  ));
  return dio;
});

//Key CalorieNinja
const String _appKeyCalorieNinja = "SYL2MIgCK0MUIghC4I+svg==dPmdtI9D1YHUoNFO";

final dioCalorieNinjaInstanceProvider = Provider.autoDispose<Dio>((ref) {
  final dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      options.headers.addAll({
        'X-Api-Key': _appKeyCalorieNinja,
      });
      return handler.next(options);
    },
  ));
  return dio;
});

