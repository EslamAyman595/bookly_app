part of 'fetchsimialirbookscubit_cubit.dart';

@immutable
sealed class FetchsimialirbooksState {}

final class FetchsimialirbooksInitial extends FetchsimialirbooksState {}
final class FetchsimialirbooksLoading extends FetchsimialirbooksState {}
final class FetchsimialirbooksSuccess extends FetchsimialirbooksState {
  final List<BookModel>books;

  FetchsimialirbooksSuccess({required this.books});
}
final class FetchsimialirbooksFailure extends FetchsimialirbooksState {
  final String message;

  FetchsimialirbooksFailure({required this.message});

}


