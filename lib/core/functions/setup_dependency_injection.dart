import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/Domin/Use Cases/Home/feach_featured_books.dart';
import '../../Features/Domin/Use Cases/Home/feach_newst_books.dart';
import '../../Features/data/Data Source/home_local_data_source.dart';
import '../../Features/data/Data Source/home_local_data_source_imp.dart';
import '../../Features/data/Data Source/home_remote_data_source.dart.dart';
import '../../Features/data/Data Source/home_remote_data_source_imp.dart.dart';
import '../../Features/data/Repositories/Home/home_repo_impl.dart';
import '../utils/api_service.dart';

void setupDependencyInjection() {
  final getIt = GetIt.instance;

  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeLocalDataSource>(
    HomeLocalDataSourceImp(),
  );
  getIt.registerSingleton<HomeRemoteDataSource>(
    HomeRemoteDataSourceImp(
      getIt<ApiService>(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: getIt<HomeLocalDataSource>(),
      homeRemoteDataSource: getIt<HomeRemoteDataSource>(),
    ),
  );
  getIt.registerSingleton<FeachFeaturedBooksUseCase>(
    FeachFeaturedBooksUseCase(
      getIt<HomeRepoImpl>(),
    ),
  );
  getIt.registerSingleton<FeachNewstBooksUseCase>(
    FeachNewstBooksUseCase(
      getIt<HomeRepoImpl>(),
    ),
  );
}
