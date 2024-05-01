import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'searchbook_cuit_state.dart';

class SearchbookCubit extends Cubit<SearchbookState> {
  SearchbookCubit(this.searchRepo) : super(SearchbookInitial());
  final SearchRepo searchRepo;
  String? categoryName;
   Future<void> fetchSearchBooks({required String categoryName})async{
    emit(SearchbookLoading());
   var result=await  searchRepo.fetchSearchBooks(categoryName: categoryName);
   result.fold((failure) {
    return emit(SearchbookFailure(failure.errMessage));
   }, (books) {
    return  emit(SearchbookSuccess(books));
   });
   }
}
