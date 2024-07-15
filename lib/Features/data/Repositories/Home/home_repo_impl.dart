import 'package:dio/dio.dart';

import '../../../../Features/Domin/Entities/book_entities.dart';
import '../../../../Features/data/Data%20Source/home_local_data_source.dart';
import '../../../../Features/data/Data%20Source/home_remote_data_source.dart.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failuer.dart';
import '../../../Domin/Repositories/Home/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntities>>> feachFeaturedBooks() async {
    try {
      // Get the list of books from local storage
      List<BookEntities> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        // If the list of books is not empty, return it
        return Right(books);
      }
      // Fetch the list of books from the API
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return Right(books); // Return the list of books
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntities>>> fetchNewestBooks() async {
    try {
      // Get the list of books from local storage
      List<BookEntities> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        // If the list of books is not empty, return it
        return Right(
          books,
        );
      }
      // Fetch the list of books from the API
      books = await homeRemoteDataSource.fetchNewestBooks();
      return Right(books); // Return the list of books
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
