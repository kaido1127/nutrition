import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) => AppDatabase());


