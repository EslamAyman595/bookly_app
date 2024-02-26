import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manger/fetch_simialar_books_cubit/cubit/fetchsimialirbookscubit_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetalisView extends StatefulWidget {
  const BookDetalisView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  State<BookDetalisView> createState() => _BookDetalisViewState();
}

class _BookDetalisViewState extends State<BookDetalisView> {
  @override
  void initState() {
    BlocProvider.of<Fetchsimialirbookscubit>(context).fetchSimialarBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
