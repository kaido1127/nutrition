part of 'view_food_details_repository.dart';

class _ViewFoodDetailsRepositoryImpl implements ViewFoodDetailsRepository {
  final ViewFoodDetailsRemoteDataSource _remoteDataSource;
  final ViewFoodDetailsLocalDataSource _localDataSource;

  _ViewFoodDetailsRepositoryImpl(
      {required ViewFoodDetailsRemoteDataSource remoteDataSource,
      required ViewFoodDetailsLocalDataSource localDataSource})
      : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;
  @override
  Future<FoodDetailsEntity> getFoodDetailsByName(
      String foodName, DataSourceType dataSourceType) async {
    try {
      //Map Food from remote to entities
      if (dataSourceType == DataSourceType.remote) {
        final foodCommon = await _remoteDataSource.getFoodCommonByName(foodName);
        bool isFavorite = await isFavoriteFood(foodName);
        final foodEntity = FoodDetailsEntity.loadFromFoodCommon(foodCommon,isFavorite);

        return foodEntity;
      } else {
        //Map Food from remote to entities

        final foodFavorite = await _localDataSource.getFavoriteFood(foodName);
        if (foodFavorite != null) {
          final foodEntity = foodDetailsEntityFromFoodFavorite(foodFavorite);
          //print(foodEntity.foodName);

          return foodEntity;
        } else {
          return Future.error(Null);
        }
      }
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> addFoodToLocal(FoodDetailsEntity foodDetailsEntity) async {
    try {
      final newFood = FoodCommonLocalCompanion(
        foodName: Value.ofNullable(foodDetailsEntity.foodName),
        servingQty: Value.ofNullable(foodDetailsEntity.servingQty ?? 0),
        servingUnit: Value.ofNullable(foodDetailsEntity.servingUnit ?? ''),
        servingWeightGrams: Value.ofNullable(foodDetailsEntity.servingWeightGrams ?? 0.0),
        nfCalories: Value.ofNullable(foodDetailsEntity.nfCalories ?? 0.0),
        nfTotalFat: Value.ofNullable(foodDetailsEntity.nfTotalFat ?? 0.0),
        nfCholesterol: Value.ofNullable(foodDetailsEntity.nfCholesterol ?? 0.0),
        nfSodium: Value.ofNullable(foodDetailsEntity.nfSodium ?? 0.0),
        nfTotalCarbohydrate: Value.ofNullable(foodDetailsEntity.nfTotalCarbohydrate ?? 0.0),
        nfDietaryFiber: Value.ofNullable(foodDetailsEntity.nfDietaryFiber ?? 0.0),
        nfSugars: Value.ofNullable(foodDetailsEntity.nfSugars ?? 0.0),
        nfProtein: Value.ofNullable(foodDetailsEntity.nfProtein ?? 0.0),
        nfPotassium: Value.ofNullable(foodDetailsEntity.nfPotassium ?? 0.0),
        photoUrl: Value.ofNullable(
            (foodDetailsEntity.photo ?? Photo(thumb: CommonString.foodImageUrl)).thumb),
        listAltMeasure:
            Value.ofNullable(ListAltMeasure(listAltMeasure: foodDetailsEntity.altMeasures)),
        isFavoriteFood: const Value(false),
      );
      await _localDataSource.addFood(newFood);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> deleteFoodFavorite(String foodName) async {
    try {
      await _localDataSource.deleteFavoriteFood(foodName);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  FoodDetailsEntity foodDetailsEntityFromFoodFavorite(FoodCommonLocalData foodLocal) {
    return FoodDetailsEntity(
        foodName: foodLocal.foodName,
        servingQty: foodLocal.servingQty,
        servingUnit: foodLocal.servingUnit,
        servingWeightGrams: foodLocal.servingWeightGrams,
        nfCalories: foodLocal.nfCalories,
        nfTotalFat: foodLocal.nfTotalFat,
        nfCholesterol: foodLocal.nfCholesterol,
        nfSodium: foodLocal.nfSodium,
        nfTotalCarbohydrate: foodLocal.nfTotalCarbohydrate,
        nfDietaryFiber: foodLocal.nfDietaryFiber,
        nfSugars: foodLocal.nfSugars,
        nfProtein: foodLocal.nfProtein,
        nfPotassium: foodLocal.nfPotassium,
        photo: Photo(thumb: foodLocal.photoUrl),
        altMeasures: foodLocal.listAltMeasure?.listAltMeasure,
        dataSourceType: DataSourceType.local,
        isFavorite: foodLocal.isFavoriteFood);
  }

  @override
  Future<bool> isFavoriteFood(String foodName) async {
    final food = await _localDataSource.getFavoriteFood(foodName);
    return food != null;
  }

  @override
  Future<bool> isLocalFood(String foodName) async {
    final food = await _localDataSource.getFood(foodName);
    return food != null;
  }

  @override
  Future<void> changeFavoriteState(String foodName,bool currentState) async {
    try {
      await _localDataSource.changeFavoriteState(foodName,currentState);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
