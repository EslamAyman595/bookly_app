part of 'searchbook_cuit_cubit.dart';

sealed class SearchbookState extends Equatable {
  const SearchbookState();

  @override
  List<Object> get props => [];
}

final class SearchbookInitial extends SearchbookState {}
final class SearchbookLoading extends SearchbookState {}
final class SearchbookSuccess extends SearchbookState {
  final List<BookModel>books;

 const SearchbookSuccess( this.books);
  
}
final class SearchbookFailure extends SearchbookState {
  final String message;

 const SearchbookFailure( this.message);

}



