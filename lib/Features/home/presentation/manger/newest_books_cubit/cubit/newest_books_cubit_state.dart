part of 'newest_books_cubit_cubit.dart';

sealed class NewestBooksCubitState extends Equatable {
  const NewestBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewestBooksCubitInitial extends NewestBooksCubitState {}
final class NewestBooksCubitLoading extends NewestBooksCubitState {}
final class NewestBooksSuccess extends NewestBooksCubitState {
  final List<BookModel>books;

 const NewestBooksSuccess(this.books);


}
final class NewestBooksFailure extends NewestBooksCubitState {
  final String message;

 const NewestBooksFailure(this.message);

}
