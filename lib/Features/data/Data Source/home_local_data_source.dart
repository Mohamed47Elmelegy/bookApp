import '../../Domin/Entities/book_entities.dart';

abstract class HomeLocalDataSource {
  //Onle List Because It's LocalData From Device
  List<BookEntities> fetchFeaturedBooks();
  List<BookEntities> fetchNewestBooks();
}
