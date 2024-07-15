import '../../Features/Domin/Entities/book_entities.dart';
import '../../core/config/application_theme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/config/constants.dart';
import 'core/config/page_route_names.dart';
import 'core/config/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(
    BookEntitiesAdapter(),
  );
  await Hive.openBox(
    Constants.featuredBox,
  );
  await Hive.openBox(
    Constants.newestBox,
  );
  runApp(
    const BookApp(),
  );
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
