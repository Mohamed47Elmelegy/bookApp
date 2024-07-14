import '../../../Features/Domin/Entities/book_entities.dart';
import 'home_remote_data_source.dart.dart';

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  @override
  Future<List<BookEntities>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntities>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
