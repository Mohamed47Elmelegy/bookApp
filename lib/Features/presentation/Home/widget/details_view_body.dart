import 'package:book_with_claen_architecture/Features/presentation/Home/widget/books_rate.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/widgets/custom_details_app_bar.dart';
import '../../../../main.dart';
import 'custom_book_image.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomDetailsAppBar(), //App Bar
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Constants.mediaQuery.width * 0.17,
            ),
            child: const CustomBookImgae(),
          ),
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
        ],
      ),
    );
  }
}
