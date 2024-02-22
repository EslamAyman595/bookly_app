import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDtailsSection extends StatelessWidget {
const BookDtailsSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2),
            child: CustomItem(
              imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=Z%2fPIeIRD&id=2F59B1EFBEC4233A112302E1FB757DC874671FB4&thid=OIP.Z_PIeIRDajXPmZHROt-T_QHaEK&mediaurl=https%3a%2f%2fjooinn.com%2fimages%2flonely-tree-reflection-3.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.67f3c87884436a35cf9991d13adf93fd%3frik%3dtB9ndMh9dfvhAg%26pid%3dImgRaw%26r%3d0&exph=2160&expw=3840&q=images&simid=608035802041376226&FORM=IRPRST&ck=70D5AA6FBCFB7F73044E9E200DB75CB7&selectedIndex=1&itb=0',
            ),
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
      ],
    );
  }
}