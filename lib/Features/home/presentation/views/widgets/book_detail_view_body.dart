import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
const BookDetailViewBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
         AspectRatio(
        aspectRatio:
            2.5/ 3.5, //sized boxبيجفظ على نسبة الطول والعرض حتى لو اتغير
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image:const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.test,
                ),
              )),
        ),
      
    )
      ],
    );
  }
}