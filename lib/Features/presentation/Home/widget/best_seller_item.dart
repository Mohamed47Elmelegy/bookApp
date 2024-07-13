import 'package:book_with_claen_architecture/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/config/page_route_names.dart';
import '../../../../main.dart';
import 'books_rate.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return GestureDetector(
      onTap: () {
        navigatorKey.currentState!.pushNamed(
          PageRouteNames.details,
        );
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  //Book Main Container
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AssetsData
                              .textImageContainer, //!chatch Image From Api Her
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      right: 8,
                      bottom: 8,
                    ),
                    alignment: Alignment.bottomRight,
                    //Play Icon Container
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 5,
                              spreadRadius: 5),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          navigatorKey.currentState!
                              .pushNamed(PageRouteNames.details);
                        },
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Constants.mediaQuery.width * 0.5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: theme.textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Gap(5),
                Text(
                  'J.K. Rowling',
                  style: theme.textTheme.bodyMedium,
                ),
                const Gap(5),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: theme.textTheme.titleSmall?.copyWith(fontSize: 18),
                    ),
                    const Gap(44.3),
                    const BooksRate()
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
