enum MealType { breakfast, lunch, dinner, snack }


MealType? mealTypeFromJson(String? json) {
  switch (json) {
    case 'breakfast':
      return MealType.breakfast;
    case 'lunch':
      return MealType.lunch;
    case 'dinner':
      return MealType.dinner;
    case 'snack':
      return MealType.snack;
  }
  return null;
}

int mealTypeToInt(MealType mealType) {
  switch (mealType) {
    case MealType.breakfast:
      return 0;
    case MealType.lunch:
      return 1;
    case MealType.dinner:
      return 2;
    case MealType.snack:
      return 3;
  }
}

MealType mealTypeFromInt(int intType) {
  switch (intType) {
    case 0:
      return MealType.breakfast;
    case 1:
      return MealType.lunch;
    case 2:
      return MealType.dinner;
    case 3:
      return MealType.snack;
  }
  return MealType.breakfast;
}
