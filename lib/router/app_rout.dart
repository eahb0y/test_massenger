

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_massenger/features/main/presentation/page/main_page.dart';
import 'package:test_massenger/router/rout_name.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();


class AppRoutes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    if (kDebugMode) {
      print("route : ${settings.name}");
    }
    switch (settings.name){
      case Rout.initial:
        return MaterialPageRoute(builder: (_)=>const MainPage());
      default:
        return MaterialPageRoute(builder: (_)=>const MainPage());
    }
  }
}