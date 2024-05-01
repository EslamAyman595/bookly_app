import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService;

  SearchRepoImpl( this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String categoryName})async {
  try {
  var data= await apiService.get(endPoints: 'volumes?Sorting=newest&q=$categoryName');
    
  
   List<BookModel>  book=[];
   for( var item in data["items"]){
    book.add(BookModel.fromJson(item));
   
   }
   return right(book);
}  catch (e) {
  // ignore: deprecated_member_use
  if( e is DioError){
    return left(ServerFailure.fromDioError(e));
  }
  else{
    return left(ServerFailure(e.toString()));
  }
  // TODO
}
   
  }

}