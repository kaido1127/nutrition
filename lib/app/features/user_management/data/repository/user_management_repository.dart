import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/features/user_management/data/data_source/user_management_local_data_source.dart';
import 'package:nutritrion/app/features/user_management/domain/user_entity.dart';

part 'user_management_repository_impl.dart';

abstract interface class UserManagementRepository {
  Future<void> createOrUser(UserEntity userEntity);
  Future<UserEntity?> getUser();

  factory UserManagementRepository.create(UserManagementLocalDataSource localDataSource) =>
      _UserManagementRepositoryImpl(localDataSource: localDataSource);
}
