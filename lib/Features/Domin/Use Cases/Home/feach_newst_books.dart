import 'package:book_with_claen_architecture/core/UseCase/use_case.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuer.dart';
import '../../Entities/book_entities.dart';
import '../../Repositories/Home/home_repo.dart';

class FeachNewstBooksUseCase extends UseCase<List<BookEntities>, NoParm> {
  final HomeRepo homeRepo;
//UseCase To Repo(S ->Single Responsibility Principle. )-->A class should have only one reason to change.
  FeachNewstBooksUseCase(
    this.homeRepo,
  );

  @override
  Future<Either<Failure, List<BookEntities>>> call([NoParm? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
