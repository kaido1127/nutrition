import 'package:nutritrion/app/features/user_management/presentation/controller/user_information_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'activity_level_controller.g.dart';

@riverpod
class ActivityLevelController extends _$ActivityLevelController {
  @override
  (int, String) build() {
    final currentUser = ref.watch(userInformationControllerProvider).value;
    if (currentUser != null) {
      return activityLevels.where((lv) => lv.$1 == currentUser.activityLevel).first;
    }
    return activityLevels.first;
  }

  void changeActivityLevel((int, String) level) {
    state = level;
  }
}

const List<(int, String)> activityLevels = [
  (0, "Sedentary (office job)"),
  (1, "Light Exercise (1-2 days/week)"),
  (2, "Moderate Exercise (3-5 days/week)"),
  (3, "Heavy Exercise (6-7 days/week)"),
  (4, "Athlete (2x per day)"),
];
