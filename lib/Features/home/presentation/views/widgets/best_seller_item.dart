import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
const BestSellerItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 130,
      child: Row(
        children: [
           AspectRatio(
          aspectRatio:
              2.7/ 4, //sized boxبيجفظ على نسبة الطول والعرض حتى لو اتغير
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image:const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.test,
                  ),
                )),
          ),
        
      ),
          // Column(
          //   children: [
          //     ListTile(
          //       title: Text('asdFZDgx'),
          //       subtitle: Text('hkhgfh'),
          //       //leading: ,
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}