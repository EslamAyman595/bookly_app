import 'package:bookly_app/Features/home/presentation/views/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';

class BookDetalisView extends StatelessWidget {
const BookDetalisView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const  Scaffold(
      body: BookDetailViewBody()
      ,
    );
  }
}