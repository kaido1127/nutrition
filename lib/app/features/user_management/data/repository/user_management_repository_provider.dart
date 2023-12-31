import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/user_management/data/data_source/user_management_data_source_provider.dart';
import 'package:nutritrion/app/features/user_management/data/repository/user_management_repository.dart';

final userManagementRepositoryProvider = Provider<UserManagementRepository>(
    (ref) {
      return UserManagementRepository.create(ref.watch(userManagementDataSourceProvider));
    });
