import 'package:dio/dio.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';
import 'package:nutritrion/app/features/search_foods/data/models/food_of_branded.dart';
import 'package:nutritrion/app/features/search_foods/data/models/search_branded_food_response.dart';
import 'package:nutritrion/app/features/search_foods/data/models/search_food_item_response.dart';

part 'search_foods_remote_data_source_impl.dart';
part 'search_foods_calorie_remote_data_source_impl.dart';

abstract interface class SearchFoodsRemoteDataSource {
  Future<List<SearchFoodItemResponse>> searchByName(String query);
  Future<List<SearchFoodItemResponse>> searchByBarcode(String query);

  factory SearchFoodsRemoteDataSource.create(Dio dio) => _SearchFoodsRemoteDataSourceImpl(dio: dio);
  //factory SearchFoodsRemoteDataSource.create(Dio dio) => _SearchFoodsCalorieRemoteDataSourceImpl(dio: dio);
}
