import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/Features/search/presentation/manager/cubit/searchbook_cuit_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indacitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key, required this.bookModel}) : super(key: key);
final List<BookModel> bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          //shrinkWrap: true,
          //physics:const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: bookModel.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
                child:BookListViewItem(
                  bookModel:bookModel[index],
                )
              // CustomItem(
              //   imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ??''
              //  )
             // child: Text('bhvg'),
            );
          },
        );
      
        
    
    
  }
}
