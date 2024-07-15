import 'package:hive/hive.dart';

import '../../Features/Domin/Entities/book_entities.dart';

void saveBooksLocalData(List<BookEntities> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
