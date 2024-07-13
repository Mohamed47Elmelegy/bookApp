import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../main.dart';

class BooksRate extends StatelessWidget {
  const BooksRate({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
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
        ),
      ],
    );
  }
}
