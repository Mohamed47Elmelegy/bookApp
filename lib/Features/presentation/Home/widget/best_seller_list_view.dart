import 'package:flutter/material.dart';

import '../../../../core/config/constants.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.height * 0.48,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(10),
            child: BestSellerItem(),
          );
        },
      ),
    );
  }
}
