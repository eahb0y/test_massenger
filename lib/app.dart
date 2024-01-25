import 'package:flutter/material.dart';
import 'package:test_massenger/router/app_rout.dart';
import 'package:test_massenger/router/rout_name.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: Rout.initial,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
