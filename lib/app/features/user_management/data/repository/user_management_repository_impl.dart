part of 'user_management_repository.dart';

class _UserManagementRepositoryImpl implements UserManagementRepository {
  final UserManagementLocalDataSource _localDataSource;

  _UserManagementRepositoryImpl({required UserManagementLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  @override
  Future<void> createOrUser(UserEntity userEntity) async {
    try {
      await _localDataSource.createOrUpdateUser(userEntity.toUserCompanion());
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<UserEntity?> getUser() async {
    try {
      final resultUser = await _localDataSource.getUser();
      if (resultUser != null) {
        return UserEntity.fromUserData(resultUser);
      } else {
        return null;
      }
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
