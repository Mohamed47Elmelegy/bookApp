import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../../Domin/Entities/book_entities.dart';
import '../../../../Domin/Use Cases/Home/feach_newst_books.dart';

part 'feach_newst_books_state.dart';

class FeachNewstBooksCubit extends Cubit<FeachNewstBooksState> {
  FeachNewstBooksCubit(this.newstBooksUseCase)
      : super(FeachNewstBooksInitial());
  final FeachNewstBooksUseCase newstBooksUseCase;
  Future<void> feachNewstBooks() async {
    emit(
      FeachNewstBooksInitial(),
    );
    var result = await newstBooksUseCase.call();
    result.fold(
      (failure) {
        emit(
          FeachNewstBooksFailure(
            failure.message,
          ),
        );
      },
      (books) {
        emit(
          FeachNewstBooksSuccess(
            books,
          ),
        );
      },
    );
  }
}
