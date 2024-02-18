import 'package:dio/dio.dart';

class ApiService{
  final _baseurl='https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String,dynamic>> get ({required String endPoints}) async{
  var response= await  _dio.get('$_baseurl$endPoints');
  return response.data;

  }
}