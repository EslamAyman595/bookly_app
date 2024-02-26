import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDtailsSection extends StatelessWidget {
const BookDtailsSection({ Key? key, required this.book }) : super(key: key);
final BookModel book;
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: CustomItem(
              imageUrl:
              book.volumeInfo.imageLinks?.thumbnail??''
            ),
          ),
        const  SizedBox(
            height: 10,
          ),
          Text(
            book.volumeInfo.title!,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
           BookRating(
            rating:book.volumeInfo.averageRating ??0,
            count: book.volumeInfo.ratingsCount ?? 0 ,

            mainAxisAlignment: MainAxisAlignment.center,
          ),
           BookAction(
            bookModel: book,
           ),
      ],
    );
  }
}