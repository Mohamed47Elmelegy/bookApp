import 'package:book_with_claen_architecture/core/config/application_theme.dart';
import 'package:flutter/material.dart';

import 'core/config/page_route_names.dart';
import 'core/config/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.appTheme,
      themeMode: ThemeMode.dark,
      initialRoute: PageRouteNames.initial,
      onGenerateRoute: Routes.onGeneratedRoute,
      navigatorKey: navigatorKey,
    );
  }
}
