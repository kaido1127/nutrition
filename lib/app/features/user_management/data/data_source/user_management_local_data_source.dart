import 'package:nutritrion/app/core/data/local/app_database.dart';

part 'user_management_local_data_source_impl.dart';

abstract interface class UserManagementLocalDataSource {
  Future<void> createOrUpdateUser(UserCompanion userCompanion);
  Future<UserData?> getUser();

  factory UserManagementLocalDataSource.create(AppDatabase appDatabase) =>
      _UserManagementLocalDataSourceImpl(appDatabase: appDatabase);
}
