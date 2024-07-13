import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/config/constants.dart';
import '../../../../main.dart';
import 'books_action.dart';
import 'books_rate.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Constants.mediaQuery.width * 0.2,
          ),
          child: const CustomBookImage(),
        ),
        const Gap(40),
        Text(
          'The Jungle Book',
          style: theme.textTheme.titleLarge,
        ),
        const Gap(
          4,
        ),
        Text(
          'Rudyard Kipling',
          style: theme.textTheme.bodyMedium,
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
