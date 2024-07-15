import '../../Features/Domin/Entities/book_entities.dart';
import '../../Features/data/models/Home/book_model/book_model.dart';

List<BookEntities> getBooksList(
  Map<String, dynamic> data,
) {
  List<BookEntities> books = [];

  // Iterate over each book in the response data
  for (var bookMap in data['items']) {
    // Convert each book map into a BookModel
    books.add(
      BookModel.fromJson(
        bookMap,
      ),
    );
  }
  return books;
}
