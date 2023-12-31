import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/data/local/app_database_provider.dart';
import 'package:nutritrion/app/features/user_management/data/data_source/user_management_local_data_source.dart';

final userManagementDataSourceProvider = Provider<UserManagementLocalDataSource>(
    (ref) {
      return UserManagementLocalDataSource.create(ref.watch(appDatabaseProvider));
    });
