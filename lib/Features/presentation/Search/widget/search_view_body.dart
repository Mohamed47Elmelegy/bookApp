import 'package:book_with_claen_architecture/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_search_text_field.dart';
import 'search_result_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(navigatorKey.currentState!.context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const Gap(
            16,
          ),
          Text(
            'Search Result',
            style: theme.textTheme.titleSmall,
          ),
          const Gap(
            16,
          ),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
