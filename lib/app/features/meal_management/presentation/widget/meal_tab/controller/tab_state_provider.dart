
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/helper/convert_hour_to_meal_type.dart';


//Get current tab when user open app with real time
final tabStateProvider = StateProvider.autoDispose<int>((ref) {
  final DateTime now = DateTime.now();
  final int hour = now.hour;

  return convertHourToMealType(hour);
});