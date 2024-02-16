import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_detalis_appbar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBookDetalisAppbar(),
          Center(
            child: SizedBox(
              height: 200,
              width: 180,
              child: AspectRatio(
                aspectRatio:
                    2.5 / 3.5, //sized boxبيجفظ على نسبة الطول والعرض حتى لو اتغير
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.red,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AssetsData.test,
                        ),
                      )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'The jungle Book',
            style: Styles.textStyle30,
          ),
          Text(
            'Reward cliping',
            style: Styles.textStyle14.copyWith(),
          ),
          BookRating(),
        ],
      ),
    );
  }
}
