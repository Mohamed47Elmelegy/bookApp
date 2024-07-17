import 'package:book_with_claen_architecture/Features/presentation/Home/manager/cubitNewstBooks/feach_newst_books_cubit.dart';
import 'package:book_with_claen_architecture/core/functions/bloc_observer.dart';
import 'package:get_it/get_it.dart'; // استيراد مكتبة Get It
import 'Features/Domin/Use%20Cases/Home/feach_featured_books.dart';
import 'Features/presentation/Home/manager/cubitFeaturedBooks/feach_featured_books_cubit.dart';
import 'core/functions/save_books_local_data.dart';
import 'core/functions/setup_dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Domin/Entities/book_entities.dart';
import 'core/config/application_theme.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart'; // استيراد مكتبة Hive Flutter
import 'Features/Domin/Use%20Cases/Home/feach_newst_books.dart';
import 'core/config/constants.dart';
import 'core/config/page_route_names.dart';
import 'core/config/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(
    BookEntitiesAdapter(),
  );
  await openHiveBox<BookEntities>(Constants.featuredBox);
  await openHiveBox<BookEntities>(Constants.newestBox);
  Bloc.observer = SimpleBlocObserver();
  openHiveBox;
  setupDependencyInjection();
  runApp(
    const BookApp(),
  );
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeachFeaturedBooksCubit(
            GetIt.instance<FeachFeaturedBooksUseCase>(),
          )..feachFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) {
            return FeachNewstBooksCubit(
              GetIt.instance<FeachNewstBooksUseCase>(),
            );
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ApplicationThemeManager.appTheme,
        themeMode: ThemeMode.dark,
        initialRoute: PageRouteNames.initial,
        onGenerateRoute: Routes.onGeneratedRoute,
        navigatorKey: navigatorKey,
      ),
    );
  }
}
// import 'package:book_with_claen_architecture/core/functions/save_books_local_data.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'Features/Domin/Use Cases/Home/feach_featured_books.dart';
// import 'Features/Domin/Use Cases/Home/feach_newst_books.dart';
// import 'core/functions/setup_dependency_injection.dart';
// import 'core/config/application_theme.dart';
// import 'core/config/constants.dart';
// import 'core/config/page_route_names.dart';
// import 'core/config/routes.dart';
// import 'Features/Domin/Entities/book_entities.dart';
// import 'Features/presentation/Home/manager/cubitFeaturedBooks/feach_featured_books_cubit.dart';
// import 'Features/presentation/Home/manager/cubitNewstBooks/feach_newst_books_cubit.dart';

// GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// void main() async {
//   await Hive.initFlutter();
//   Hive.registerAdapter(BookEntitiesAdapter());

//   await openHiveBox<BookEntities>(Constants.featuredBox);
//   await openHiveBox<BookEntities>(Constants.newestBox);

//   setupDependencyInjection();
//   openHiveBox;
//   runApp(const BookApp());
// }

// class BookApp extends StatelessWidget {
//   const BookApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => FeachFeaturedBooksCubit(
//             GetIt.instance<FeachFeaturedBooksUseCase>(),
//           )..feachFeaturedBooks(),
//         ),
//         BlocProvider(
//           create: (context) => FeachNewstBooksCubit(
//             GetIt.instance<FeachNewstBooksUseCase>(),
//           ),
//         ),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ApplicationThemeManager.appTheme,
//         themeMode: ThemeMode.dark,
//         initialRoute: PageRouteNames.initial,
//         onGenerateRoute: Routes.onGeneratedRoute,
//         navigatorKey: navigatorKey,
//       ),
//     );
//   }
// }
