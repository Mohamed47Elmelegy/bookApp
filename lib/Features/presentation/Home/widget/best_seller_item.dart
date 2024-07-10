import 'package:book_with_claen_architecture/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../main.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return Row(
      children: [
        SizedBox(
          height: 150,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
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
                      onPressed: () {},
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
        ),
        const Gap(30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '''Harry Potter 
and the Goblet of Fire''',
              style: theme.textTheme.titleMedium,
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
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                const Gap(6.3),
                Text(
                  '4.8',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontSize: 16,
                  ),
                ),
                const Gap(9),
                Text(
                  '(2390)',
                  style: theme.textTheme.bodySmall
                      ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
