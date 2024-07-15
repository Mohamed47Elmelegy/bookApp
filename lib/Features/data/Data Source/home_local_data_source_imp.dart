import '../../../Features/Domin/Entities/book_entities.dart';
import '../../../Features/data/Data%20Source/home_local_data_source.dart';
import 'package:hive/hive.dart';
import '../../../core/config/constants.dart';

// A concrete implementation of the HomeLocalDataSource abstract class
class HomeLocalDataSourceImp extends HomeLocalDataSource {
  // Retrieve a list of featured books from the local Hive box
  @override
  List<BookEntities> fetchFeaturedBooks() {
    var box = Hive.box<BookEntities>(
      Constants.featuredBox,
    );
    return box.values.toList();
  }

// Retrieve a list of newest books from the local Hive box
  @override
  List<BookEntities> fetchNewestBooks() {
    var box = Hive.box<BookEntities>(
      Constants.newestBox,
    );
    return box.values.toList();
  }
}
