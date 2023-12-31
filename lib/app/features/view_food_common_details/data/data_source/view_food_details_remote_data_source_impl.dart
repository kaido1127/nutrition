part of 'view_food_details_remote_data_source.dart';

const String _getFoodNutrientsApiUrl =
    "https://trackapi.nutritionix.com/v2/natural/nutrients";


class _ViewFoodDetailsRemoteDataSourceImpl implements ViewFoodDetailsRemoteDataSource{
  final Dio _dio;

  _ViewFoodDetailsRemoteDataSourceImpl({required Dio dio}) : _dio = dio;
  @override
  Future<FoodCommon> getFoodCommonByName(String query) async {
    try {
      var response = await _dio.post(
        _getFoodNutrientsApiUrl,
        data: {'query': query},
      );
      List<dynamic> listFoodCommonJson = response.data["foods"];
      return FoodCommon.fromJson(listFoodCommonJson.first);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }



}