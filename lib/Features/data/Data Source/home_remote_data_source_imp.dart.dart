import '../../../core/functions/get_books_list.dart';
import '../../../core/utils/api_service.dart';
import '../../../Features/Domin/Entities/book_entities.dart';
import '../../../core/config/constants.dart';
import '../../../core/functions/save_books_local_data.dart';
import 'home_remote_data_source.dart.dart';

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImp(this.apiService);

  // Fetches featured books from the API and returns a list of BookEntities
  @override
  Future<List<BookEntities>> fetchFeaturedBooks() async {
    // Make an HTTP GET request to the API endpoint
    var data = await apiService.get(
      endPoint: 'volumes?Filtering=free-ebooks&q=programming',
    );

    // Create an empty list to store the BookEntities
    List<BookEntities> books = getBooksList(
      data,
    );
    // Save the list of books to local storage
    saveBooksLocalData(
      books,
      Constants.featuredBox,
    );
    // Return the list of BookEntities
    return books;
  }

  @override
  Future<List<BookEntities>> fetchNewestBooks() async {
    // Make an HTTP GET request to the API endpoint
    var data = await apiService.get(
      endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming',
    );

    // Create an empty list to store the BookEntities
    List<BookEntities> books = getBooksList(
      data,
    );
    // Save the list of books to local storage
    saveBooksLocalData(
      books,
      Constants.newestBox,
    );
    // Return the list of BookEntities
    return books;
  }
}
