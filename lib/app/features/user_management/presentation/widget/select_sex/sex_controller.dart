import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../controller/user_information_controller.dart';

part 'sex_controller.g.dart';

@riverpod
class SexController extends _$SexController {
  @override
  (bool, String) build() {
    final currentUser = ref.watch(userInformationControllerProvider).value;
    if (currentUser != null) {
      return sex.where((lv) => lv.$1 == currentUser.sex).first;
    }
    return sex.first;
  }

  void changeSex((bool,String) newSex){
    state = newSex;
  }
}

const List<(bool, String)> sex = [
  (true, "Male"),
  (false, "Female"),
];
