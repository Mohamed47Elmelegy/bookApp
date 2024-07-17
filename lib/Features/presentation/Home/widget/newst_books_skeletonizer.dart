import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/config/page_route_names.dart';
import '../../../../main.dart';
import '../../../../core/utils/assets.dart';
import 'books_rate.dart';

class BestSellerListViewItemSkeletonizer extends StatelessWidget {
  final bool isLoading;

  const BestSellerListViewItemSkeletonizer({super.key, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorKey.currentState!.pushNamed(
          PageRouteNames.details,
        );
      },
      child: SizedBox(
        height: Constants.mediaQuery.height * 0.2,
        child: Row(
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Skeletonizer(
                    enabled: isLoading,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            AssetsData.textImageContainer,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        right: 8,
                        bottom: 8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(Constants.mediaQuery.width * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeletonizer(
                  enabled: isLoading,
                  child: SizedBox(
                    width: Constants.mediaQuery.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Constants.theme.textTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const Gap(5),
                Skeletonizer(
                  enabled: isLoading,
                  child: Text(
                    'J.K. Rowling',
                    style: Constants.theme.textTheme.bodyMedium,
                  ),
                ),
                const Gap(5),
                Row(
                  children: [
                    Skeletonizer(
                      enabled: isLoading,
                      child: Text(
                        "19.99 €",
                        style: Constants.theme.textTheme.titleSmall
                            ?.copyWith(fontSize: 18),
                      ),
                    ),
                    const Gap(44.3),
                    Skeletonizer(
                      enabled: isLoading,
                      child: const BooksRate(),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
