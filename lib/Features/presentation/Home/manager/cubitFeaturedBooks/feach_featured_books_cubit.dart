import 'package:bloc/bloc.dart';
import 'package:book_with_claen_architecture/Features/Domin/Use%20Cases/Home/feach_featured_books.dart';
import 'package:flutter/material.dart';
import '../../../../Domin/Entities/book_entities.dart';
part 'feach_featured_books_state.dart';

class FeachFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FeachFeaturedBooksCubit(
      this.feachFeaturedBooksUseCase) // Constructor that takes the use case for fetching featured books.
      : super(
          FeachFeaturedBooksInitial(), // Initialize the state with FeachFeaturedBooksInitial.
        );
  final FeachFeaturedBooksUseCase
      feachFeaturedBooksUseCase; // Define a final variable to hold the use case instance. This is because the Cubit will call the use case to fetch data.

  Future<void> feachFeaturedBooks() async {
    // Define an asynchronous method to fetch featured books.
    emit(
      FetchFeaturedBooksLoading(),
    ); // Emit a loading state before starting the data fetch.
    var result = await feachFeaturedBooksUseCase
        .call(); // Call the use case to fetch featured books and wait for the result.
    result.fold(
      // Handle the result of the use case call.
      (failure) {
        // If the result is a failure,
        emit(
          FetchFeaturedBooksFailure(
              failure.message), // Emit a failure state with the error message.
        );
      },
      (books) {
        // If the result is a success,
        emit(
          FetchFeaturedBooksSuccess(
              books), // Emit a success state with the list of fetched books.
        );
      },
    );
  }
}
