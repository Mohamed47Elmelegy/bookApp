import 'package:book_with_claen_architecture/Features/presentation/Home/widget/custom_list_view_item.dart';
import 'package:book_with_claen_architecture/Features/presentation/Home/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBookListView(),
      ],
    );
  }
}
