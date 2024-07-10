import 'package:book_with_claen_architecture/Features/presentation/Home/widget/best_seller_item.dart';
import 'package:book_with_claen_architecture/Features/presentation/Home/widget/featured_book_list_view.dart';
import 'package:book_with_claen_architecture/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final theme = Theme.of(navigatorKey.currentState!.context);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBookListView(),
          const Gap(20),
          Text(
            "Best Seller",
            style: theme.textTheme.titleSmall,
          ),
          const Gap(20),
          const BestSellerListView()
        ],
      ),
    );
  }
}
