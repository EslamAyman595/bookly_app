import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
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
              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                Uri uri=Uri.parse(bookModel.volumeInfo.previewLink!);
                 if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
  }
              },
              color: Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Perview',
              borderRadius: BorderRadius.horizontal(right: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
