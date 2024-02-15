import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
const SplashViewBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,//ممكن تاخدوwidth اكبر children    تاخد

      children: [
        Image.asset(AssetsData.logo),
        SizedBox(
          height: 5,
        ),
      const   Text('Read Free Books ' ,textAlign: TextAlign.center,style: TextStyle(fontSize:20 ),)
      ],
    );
  }
}