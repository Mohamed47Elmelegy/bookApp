import 'package:flutter/material.dart';
import 'package:book_with_claen_architecture/Features/presentation/Home/widget/custom_book_image.dart';
import '../../../../core/config/constants.dart';
import '../../../Domin/Entities/book_entities.dart';

class CustomBookImageListView extends StatelessWidget {
  const CustomBookImageListView({super.key, required this.books});
  final List<BookEntities> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CustomBookImage(
              image: books[index].image ?? '',
            ), //Books List HomePage
          );
        },
        padding: EdgeInsets.zero,
        itemCount: books.length,
      ),
    );
  }
}
