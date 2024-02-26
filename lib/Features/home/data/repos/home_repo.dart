import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewesedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimialarBooks({required String category});

}
