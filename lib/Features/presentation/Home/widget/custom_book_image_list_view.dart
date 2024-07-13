import 'package:book_with_claen_architecture/Features/presentation/Home/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/constants.dart';

class CutomBookImageListView extends StatelessWidget {
  const CutomBookImageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: CustomBookImage(), //Books List HomePage
          );
        },
        padding: EdgeInsets.zero,
        itemCount: 10,
      ),
    );
  }
}
