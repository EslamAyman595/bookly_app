import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:meta/meta.dart';

part 'fetchsimialirbookscubit_state.dart';

class Fetchsimialirbookscubit extends Cubit<FetchsimialirbooksState> {
  Fetchsimialirbookscubit(this.homeRepo) : super(FetchsimialirbooksInitial());
  final HomeRepo homeRepo;
  Future<void>  fetchSimialarBooks({required String category})async{
     emit(FetchsimialirbooksLoading());

 var result = await  homeRepo.fetchSimialarBooks(category: category);
 result.fold((failure) {
  return emit(FetchsimialirbooksFailure(message: failure.errMessage));
 }, (books) {
  return emit(FetchsimialirbooksSuccess(books: books));
 });
  }
}
