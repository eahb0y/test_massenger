import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_massenger/router/app_rout.dart';
import 'package:test_massenger/router/rout_name.dart';

import 'core/theme/theme.dart';
import 'generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Rout.initial,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: appTheme,
      themeMode: ThemeMode.light,
      locale: const Locale.fromSubtags(languageCode: "ru"),
      localizationsDelegates: const [
        AppLocalization.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
