import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/routes/app_routes.dart';

final routeProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: routes,initialLocation: "/splash_page");
});