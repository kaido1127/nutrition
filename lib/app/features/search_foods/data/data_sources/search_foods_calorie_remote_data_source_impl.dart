part of 'search_foods_remote_data_source.dart';

String _getFoodNutrientsCalorieNinjaApiUrl(String query) =>
    "https://api.calorieninjas.com/v1/nutrition?query=$query";

class _SearchFoodsCalorieRemoteDataSourceImpl implements SearchFoodsRemoteDataSource {
  final Dio _dio;

  _SearchFoodsCalorieRemoteDataSourceImpl({required Dio dio}) : _dio = dio;
  @override
  Future<List<SearchFoodItemResponse>> searchByName(String query) async {
    List<SearchFoodItemResponse> result = [];

    var response = await _dio.get(_getFoodNutrientsCalorieNinjaApiUrl(query));

    List<dynamic> listFoodJson = response.data["items"];

    for (var foodJson in listFoodJson) {
      var newFood = SearchFoodItemResponse(
          foodName: foodJson["name"]??"",
          subtitle: "Serving Size ${foodJson["serving_size_g"].toString()??""} gram",
          nfCalories: foodJson["calories"].toString()??"",
          photoUrl: CommonString.foodImageUrl,
          foodType:FoodType.common);
      result.add(newFood);
    }

    for (var foodJson in listFoodJson) {
      var newFood = SearchFoodItemResponse(
          foodName: foodJson["name"]??"",
          subtitle: "Total Fat ${foodJson["fat_total_g"].toString()??""} gram",
          nfCalories: foodJson["calories"].toString()??"",
          photoUrl: CommonString.foodImageUrl,
          foodType:FoodType.branded);
      result.add(newFood);
    }

    return result;
  }

  @override
  Future<List<SearchFoodItemResponse>> searchByBarcode(String query) {
    // TODO: implement searchByBarcode
    throw UnimplementedError();
  }
}
