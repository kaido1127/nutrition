import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_meal_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/menu_response.dart';

import '../models/menu_suggestion_model.dart';

part 'menu_suggestion_remote_data_source_impl.dart';

abstract interface class MenuSuggestionRemoteDataSource{
  Future<MenuSuggestionModel> getMenuSuggestionResponse(double totalCalorieOfDay, String countryName);


  factory MenuSuggestionRemoteDataSource.create(Dio dio) => _MenuSuggestionRemoteDataSourceImpl(dio: dio);
}