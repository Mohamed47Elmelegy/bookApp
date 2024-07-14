import '../../Domin/Entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntities>> fetchFeaturedBooks();
  Future<List<BookEntities>> fetchNewestBooks();
}
