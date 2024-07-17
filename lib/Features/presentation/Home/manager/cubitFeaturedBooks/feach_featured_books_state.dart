part of 'feach_featured_books_cubit.dart';

@immutable
sealed class FetchFeaturedBooksState {}

class FeachFeaturedBooksInitial extends FetchFeaturedBooksState {}

class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}

class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<BookEntities> books;

  FetchFeaturedBooksSuccess(this.books);
}

class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String errMassage;

  FetchFeaturedBooksFailure(this.errMassage);
}
