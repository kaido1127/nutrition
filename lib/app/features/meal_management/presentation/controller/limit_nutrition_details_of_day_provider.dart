import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_meal_provider.dart';
import 'package:nutritrion/app/features/user_management/domain/user_entity.dart';
import 'package:nutritrion/app/features/user_management/presentation/controller/user_information_controller.dart';

//Calculate total food details limit in 1 day from 4 meals
final limitNutritionDetailsOfDayProvider =
    Provider.autoDispose<Map<NutritionDetailType, double>>((ref) {
  Map<NutritionDetailType, double> nutritionDetailMap = {};

  final currentUser = ref.watch(userInformationControllerProvider).value;

  double totalCalorie = 0.0; //Cal
  double totalCarb = 0.0; //gram
  double totalFat = 0.0; //gram
  double totalProtein = 0.0; //gram
  double totalSugar = 0.0; //gram

  if (currentUser != null) {
    double r = 1.2 + (currentUser.activityLevel ?? 0) * 0.175;
    double tdee = bmrUser(currentUser) * r;

    totalCalorie = tdee + calorieChangesOfDay(currentUser);

    totalCarb = totalCalorie / 4 * 0.489;
    totalProtein = totalCalorie / 4 * 0.195;
    totalFat = totalCalorie / 8 * 0.256;
    totalSugar = totalCalorie / 3.9 * 0.1;

    print("[Total calo] $totalCalorie");
  }

  nutritionDetailMap[NutritionDetailType.calorie] = totalCalorie;
  nutritionDetailMap[NutritionDetailType.carb] = totalCarb;
  nutritionDetailMap[NutritionDetailType.fat] = totalFat;
  nutritionDetailMap[NutritionDetailType.protein] = totalProtein;
  nutritionDetailMap[NutritionDetailType.sugar] = totalSugar;

  return nutritionDetailMap;
});

double bmrUser(UserEntity userEntity) {
  double weight = userEntity.weight ?? 0;
  double height = userEntity.height ?? 0;
  int age = DateTime.now().year - (userEntity.birthDay ?? DateTime.now()).year;

  double bmrWithOutSex = 10 * weight + 6.25 * height - 5 * age;
  //BMR = 10W+6.25H -5A (+5 With Man) (-161 With Woman)
  double bmr = bmrWithOutSex + ((userEntity.sex ?? true) ? (5) : (-161));

  return bmr;
}

double calorieChangesOfDay(UserEntity userEntity) {
  double weightChanges = (userEntity.weightTarget ?? 0) - (userEntity.weight ?? 0);
  double calorieChangesFromWeight = weightChanges * 7700;

  double result = calorieChangesFromWeight / (userEntity.completeWeeksTarget ?? 1) / 7;
  return result;
}
