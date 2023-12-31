import 'package:nutritrion/app/features/user_management/data/repository/user_management_repository.dart';
import 'package:nutritrion/app/features/user_management/data/repository/user_management_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/user_entity.dart';

part 'user_information_controller.g.dart';

@riverpod
class UserInformationController extends _$UserInformationController {
  @override
  Future<UserEntity?> build() async {
    return _repository.getUser();
  }

  UserManagementRepository get _repository => ref.watch(userManagementRepositoryProvider);


  Future<bool> userExist() async {
    final currentUser = await _repository.getUser();
    return currentUser != null;
  }

  Future<void> saveUserInformation(UserEntity userEntity) async {
    try {
      state = const AsyncLoading();
      await _repository.createOrUser(userEntity);
      ref.invalidateSelf();
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
