import 'package:book_with_claen_architecture/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, param> {
  Future<Either<Failuer, Type>> call([param param]);
}

class NoParm {}
