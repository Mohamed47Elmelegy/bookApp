import 'package:book_with_claen_architecture/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../main.dart';
import '../config/constants.dart';
import '../config/page_route_names.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return SliverAppBar(
      backgroundColor: theme.primaryColor,
      pinned: true,
      expandedHeight: Constants.mediaQuery.height * 0.12,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(left: 30, bottom: 16),
        title: Row(
          children: [
            Image.asset(AssetsData.logo, height: 16),
            const Spacer(),
            IconButton(
              onPressed: () {
                navigatorKey.currentState!.pushNamed(PageRouteNames.search);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
