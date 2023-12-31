part of 'user_management_local_data_source.dart';

class _UserManagementLocalDataSourceImpl implements UserManagementLocalDataSource {
  final AppDatabase _appDatabase;

  _UserManagementLocalDataSourceImpl({required AppDatabase appDatabase})
      : _appDatabase = appDatabase;

  @override
  Future<UserData?> getUser() async {
    try {
      final listUser = await (_appDatabase.select(_appDatabase.user)).get();

      if (listUser.isEmpty) {
        return null;
      } else {
        return listUser.first;
      }
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> createOrUpdateUser(UserCompanion userCompanion) async {
    try {
      await _appDatabase.into(_appDatabase.user).insertOnConflictUpdate(userCompanion);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

}
