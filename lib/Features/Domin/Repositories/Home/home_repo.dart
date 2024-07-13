import 'package:book_with_claen_architecture/Features/Domin/Entities/book_entities.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failuer.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookEntities>>> feachFeaturedBooks();
  Future<Either<Failuer, List<BookEntities>>> feachNewestBooks();
}
