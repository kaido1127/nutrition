import 'package:flutter/material.dart';
import 'package:nutritrion/app/core/application/locales_provider.dart';
import 'package:nutritrion/app/routes/app_routes_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Nutrition',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        appBarTheme: const AppBarTheme(
            //color: Colors.lightBlue,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 23)),
        useMaterial3: true,
      ),
      routerConfig: ref.watch(routeProvider),
      supportedLocales: ref.watch(supportedLocalesProvider),
      localizationsDelegates: ref.watch(localizationsDelegatesProvider),
    );
  }
}
