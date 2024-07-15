import 'package:book_with_claen_architecture/Features/Domin/Entities/book_entities.dart';
import 'package:book_with_claen_architecture/Features/data/Data%20Source/home_local_data_source.dart';

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntities> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntities> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
