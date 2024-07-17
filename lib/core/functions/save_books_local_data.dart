import 'package:hive/hive.dart';
import '../../Features/Domin/Entities/book_entities.dart';

void saveBooksLocalData(List<BookEntities> books, String boxName) {
  var box = Hive.box<BookEntities>(boxName);
  box.addAll(books);
}

Future<void> openHiveBox<T>(String boxName) async {
  if (!Hive.isBoxOpen(boxName)) {
    await Hive.openBox<T>(boxName);
  }
}
