import '../../../../Features/presentation/Home/manager/cubitFeaturedBooks/feach_featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_image_list_view.dart';

class CustomBookImageListViewBlocBuilder extends StatelessWidget {
  const CustomBookImageListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeachFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if (state is FetchFeaturedBooksSuccess) {
          return CustomBookImageListView(books: state.books);
        } else if (state is FetchFeaturedBooksFailure) {
          return Text(state.errMassage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
