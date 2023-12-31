import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//const String _gptKey = "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";
const String _gptKey = "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";

final dioAIChatbotInstanceProvider = Provider.autoDispose<Dio>((ref) {
  final dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      options.headers
          .addAll({'Content-Type': 'application/json', 'Authorization': 'Bearer $_gptKey'});
      return handler.next(options);
    },
      onError: (DioException error, handler) async {
        return handler.next(error);
      }
  ),
  );
  // dio.interceptors.add(LogInterceptor(
  //   logPrint: (o) => print("[DioMessage] $o}"),
  // ));
  return dio;
});
