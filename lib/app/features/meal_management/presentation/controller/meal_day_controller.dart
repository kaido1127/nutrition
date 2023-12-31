import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meal_day_controller.g.dart';

@riverpod
class MealDayController extends _$MealDayController {
  @override
  DateTime build() {
    return DateTime.now();
  }

  void changeDateTime(DateTime dateChange) {
    state = dateChange;
  }

  bool isToDay() {
    final now = DateTime.now();
    return state.day == now.day && state.month == now.month && state.year == now.year;
  }
}
