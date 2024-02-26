import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/function/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {
                
              },
              color: Colors.white,
              textColor: Colors.black,
              text: 'Free ',
              borderRadius:const BorderRadius.horizontal(left: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
               launchCustomUrl(context, bookModel.volumeInfo.previewLink);
  
              },
              color:const Color(0xffEF8262),
              textColor: Colors.white,
              text: getText(bookModel),
              borderRadius:const BorderRadius.horizontal(right: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
  
 String getText(BookModel bookModel) {
 if (bookModel.volumeInfo.previewLink == null){
  return 'Not Avaliable';
 }
 else{
  return "Preview";
 }
  }
}
