import 'package:book_with_claen_architecture/Features/data/models/Home/book_model/book_model.dart';
import 'package:book_with_claen_architecture/core/utils/api_service.dart';

import '../../../Features/Domin/Entities/book_entities.dart';
import 'home_remote_data_source.dart.dart';

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImp({required this.apiService});

  // Fetches featured books from the API and returns a list of BookEntities
  @override
  Future<List<BookEntities>> fetchFeaturedBooks() async {
    // Make an HTTP GET request to the API endpoint
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');

    // Create an empty list to store the BookEntities
    List<BookEntities> books = getBooksList(data);

    // Return the list of BookEntities
    return books;
  }

  @override
  Future<List<BookEntities>> fetchNewestBooks() async {
    // Make an HTTP GET request to the API endpoint
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');

    // Create an empty list to store the BookEntities
    List<BookEntities> books = getBooksList(data);
    // Return the list of BookEntities
    return books;
  }

  List<BookEntities> getBooksList(Map<String, dynamic> data) {
    List<BookEntities> books = [];

    // Iterate over each book in the response data
    for (var bookMap in data['items']) {
      // Convert each book map into a BookModel
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
