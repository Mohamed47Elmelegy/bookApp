import 'package:book_with_claen_architecture/Features/presentation/Home/widget/featured_list_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/constants.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: FeaturedListViewItem(), //Books List HomePage
          );
        },
      ),
    );
  }
}
