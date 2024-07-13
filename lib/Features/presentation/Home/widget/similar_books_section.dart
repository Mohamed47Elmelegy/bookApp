import 'package:book_with_claen_architecture/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: theme.textTheme.titleSmall!.copyWith(
            fontSize: 14,
          ),
        ),
        const Gap(16),
        const SimilarBooksListview(),
      ],
    );
  }
}
