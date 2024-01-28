import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_massenger/features/chat/presentation/page/chat_page.dart';
import 'package:test_massenger/features/main/presentation/bloc/main_page_bloc.dart';
import 'package:test_massenger/features/main/presentation/page/main_page.dart';
import 'package:test_massenger/injection_container.dart';
import 'package:test_massenger/router/rout_name.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();


class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print("route : ${settings.name}");
    }
    switch (settings.name) {
      case Rout.initial:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => sl<MainPageBloc>(),
              child: const MainPage(),
            ));
      case Rout.chat:
        return MaterialPageRoute(builder: (_) => const ChatPage());
      default:
        return MaterialPageRoute(builder: (_) => const MainPage());
    }
  }
}