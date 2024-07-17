import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/config/constants.dart';
import 'books_action.dart';
import 'books_rate.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Constants.mediaQuery.width * 0.2,
          ),
          child: const CustomBookImage(
            image: '',
          ),
        ),
        const Gap(40),
        Text(
          'The Jungle Book',
          style: Constants.theme.textTheme.titleLarge,
        ),
        const Gap(
          4,
        ),
        Text(
          'Rudyard Kipling',
          style: Constants.theme.textTheme.bodyMedium,
        ),
        const Gap(
          14,
        ),
        const BooksRate(),
        const Gap(
          37,
        ),
        const BooksAction(),
      ],
    );
  }
}
