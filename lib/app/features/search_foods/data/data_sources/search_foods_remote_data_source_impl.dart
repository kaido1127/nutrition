part of 'search_foods_remote_data_source.dart';

const String _searchFoodApiUrl = "https://trackapi.nutritionix.com/v2/search/instant";
const String _getFoodNutrientsApiUrl = "https://trackapi.nutritionix.com/v2/natural/nutrients";

String _getFoodNutrientsByBarCodeApiUrl(String query) =>
    "https://trackapi.nutritionix.com/v2/search/item?upc=$query";

class _SearchFoodsRemoteDataSourceImpl implements SearchFoodsRemoteDataSource {
  final Dio _dio;

  _SearchFoodsRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<SearchFoodItemResponse>> searchByName(String query) async {
    try {
      var response = await _dio.post(
        _searchFoodApiUrl,
        data: {'query': query},
      );

      List<SearchFoodItemResponse> result = [];

      List<dynamic> listFoodBrandedJson = response.data["branded"];

      for (var foodBrandedJson in listFoodBrandedJson) {
        var foodBranded = SearchFoodItemResponse(
            foodName: foodBrandedJson["food_name"]??'',
            subtitle: foodBrandedJson["brand_name"]??'',
            nfCalories: foodBrandedJson["nf_calories"].toString()??'',
            photoUrl: foodBrandedJson["photo"]["thumb"]??CommonString.foodImageUrl,
            foodType: FoodType.branded);
        result.add(foodBranded);
      }

      if (response.data["common"].toString() != "[]") {
        final List<dynamic> listFoodsCommonJson = response.data["common"];
        List<String> foodNames = [];
        for (var foodJson in listFoodsCommonJson) {
          foodNames.add(foodJson["food_name"]);
        }
        String resultString = foodNames.join('\n');

        Map<String, String> jsonResult = {"query": resultString};

        var responseFoodCommon = await _dio.post(
          _getFoodNutrientsApiUrl,
          data: jsonResult,
        );

        List<dynamic> listFoodCommonJson = responseFoodCommon.data["foods"];


        for (var foodCommonJson in listFoodCommonJson) {
          var foodCommon = SearchFoodItemResponse(
              foodName: foodCommonJson["food_name"]??'',
              subtitle: foodCommonJson["serving_unit"]??'',
              nfCalories: foodCommonJson["nf_calories"].toString()??'',
              photoUrl: foodCommonJson["photo"]["thumb"]??CommonString.foodImageUrl,
              foodType: FoodType.common);
          result.add(foodCommon);
        }


      }


      return result;
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<List<SearchFoodItemResponse>> searchByBarcode(String query) async {
    try {
      List<SearchFoodItemResponse> result = [];

      var response = await _dio.get(_getFoodNutrientsByBarCodeApiUrl(query));
      List<dynamic> listFoodCommonJson = response.data["foods"];

      for (var foodCommonJson in listFoodCommonJson) {
        var foodCommon = SearchFoodItemResponse(
            foodName: foodCommonJson["food_name"]??'',
            subtitle: foodCommonJson["serving_unit"]??'',
            nfCalories: foodCommonJson["nf_calories"].toString()??'',
            photoUrl: foodCommonJson["photo"]["thumb"]??CommonString.foodImageUrl,
            foodType: FoodType.branded);
        result.add(foodCommon);
      }
      return result;
    } on DioException catch (e) {
      return Future.error(e);
    }
  }

  /*@override
  Future<SearchFoodCalorieNinjaResponse> searchCalorieNinja(String query) async {
    try {
      var response = await _dio.get(_getFoodNutrientsCalorieNinjaApiUrl(query));
      final result = SearchFoodCalorieNinjaResponse.fromJson(response.data);

      return result;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }*/
}
