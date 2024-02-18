import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;
   HomeRepoImpl( this.apiService);
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewesedBooks() async{
     try {
  var data = await apiService.get(endPoints: 'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');

  List<BookModel>books=[];
  for(var item in data["items"]){
    books.add(BookModel.fromJson(item));
    
  }
  return right(books);
}  catch (e) {
  return left(ServiceFaliure());
}
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturesBooks() {
    // TODO: implement fetchFeaturesBooks
    throw UnimplementedError();
  }

}