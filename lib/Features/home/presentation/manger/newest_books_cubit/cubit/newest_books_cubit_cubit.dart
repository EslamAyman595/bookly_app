import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void>fetchNewesedBooks()async{
      emit(NewestBooksCubitLoading());

  var result= await  homeRepo.fetchNewesedBooks();

  result.fold((failure) {
    emit(NewestBooksFailure(failure.errMessage));
  }, (books) {
    emit(NewestBooksSuccess(books));
  });
  }
}
