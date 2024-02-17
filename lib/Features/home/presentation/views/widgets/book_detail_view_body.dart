import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detalis_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similair_books_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return CustomScrollView(
      slivers: [
          SliverFillRemaining(
            hasScrollBody: false,//scrollاللى فية بتعمل list view  و طالما scrollاللى جوة مش عايزة تعمل item
            child:Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBookDetalisAppbar(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: CustomItem(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'The jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Reward cliping',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const BookAction(),
        const   Expanded(
             child: SizedBox(
              height: 10,
                       ),
           ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You  can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
           const SizedBox(
            height: 5,
          ),
          SimilairBooksListView(),
        ],
      ),
    ) ,
          )
      ],
     );


    
    
  }
}
