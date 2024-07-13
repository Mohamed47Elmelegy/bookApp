import 'package:book_with_claen_architecture/Features/presentation/Home/view/details_view.dart';
import 'package:book_with_claen_architecture/Features/presentation/Home/view/home_view.dart';
import 'package:book_with_claen_architecture/core/config/page_route_names.dart';
import 'package:flutter/material.dart';

import '../../Features/presentation/Splash/view/splash_view.dart';

class Routes {
  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case PageRouteNames.home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      case PageRouteNames.details:
        return MaterialPageRoute(
          builder: (context) => const DetailsView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
