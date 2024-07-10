import 'package:book_with_claen_architecture/Features/presentation/Home/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/constants.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height * 0.32,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
