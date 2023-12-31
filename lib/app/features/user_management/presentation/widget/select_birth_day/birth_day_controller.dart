import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../controller/user_information_controller.dart';

part 'birth_day_controller.g.dart';

@riverpod
class BirthDayController extends _$BirthDayController {
  @override
  DateTime build() {
    final currentUser = ref.watch(userInformationControllerProvider).value;
    if (currentUser != null) {
      return currentUser.birthDay ?? DateTime(2000, 1, 1);
    }
    return DateTime(2000, 1, 1);
  }

  Future<void> changeDay(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime(2000,1,1),
        firstDate: DateTime(1920),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      state = pickedDate;
    }
  }
}
