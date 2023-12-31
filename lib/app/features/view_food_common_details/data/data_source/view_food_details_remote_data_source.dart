import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:nutritrion/app/core/data/models/food_common.dart';


part 'view_food_details_remote_data_source_impl.dart';

abstract interface class ViewFoodDetailsRemoteDataSource {
  Future<FoodCommon> getFoodCommonByName(String query);

  factory ViewFoodDetailsRemoteDataSource.create(Dio dio) =>
      _ViewFoodDetailsRemoteDataSourceImpl(dio: dio);
}
