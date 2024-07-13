import 'package:book_with_claen_architecture/Features/Domin/Entities/book_entities.dart';

abstract class HomeRepo {
  Future<List<BookEntities>> feachFeaturedBooks();
  Future<List<BookEntities>> feachNewstBooks();
}
