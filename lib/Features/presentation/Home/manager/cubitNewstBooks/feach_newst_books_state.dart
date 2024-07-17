part of 'feach_newst_books_cubit.dart';

@immutable
sealed class FeachNewstBooksState {}

class FeachNewstBooksInitial extends FeachNewstBooksState {}

class FeachNewstBooksLoading extends FeachNewstBooksState {}

class FeachNewstBooksSuccess extends FeachNewstBooksState {
  final List<BookEntities> books;

  FeachNewstBooksSuccess(this.books);
}

class FeachNewstBooksFailure extends FeachNewstBooksState {
  final String errMassage;

  FeachNewstBooksFailure(this.errMassage);
}
