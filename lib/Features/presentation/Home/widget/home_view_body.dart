import 'package:book_with_claen_architecture/Features/presentation/Home/widget/custom_book_image_list_view.dart';
import 'package:book_with_claen_architecture/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CutomBookImageListView(),
              const Gap(49),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: Constants.theme.textTheme.titleSmall,
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
