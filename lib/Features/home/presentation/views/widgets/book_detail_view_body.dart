import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_dtails_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detalis_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similair_books_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody:
              false, //scrollاللى فية بتعمل list view  و طالما scrollاللى جوة مش عايزة تعمل item
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const CustomBookDetalisAppbar(),
                const SizedBox(
                  height: 5,
                ),
                 BookDtailsSection(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 5,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You  can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SimilairBooksListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
