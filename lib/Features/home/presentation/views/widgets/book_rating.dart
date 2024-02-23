import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.solidStar,
              color: Color(0xffFFDD4F),
            )),
        const SizedBox(
          width: 4,
        ),
         Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
            opacity: .8,
            child: Text(
             '($count)', 
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
