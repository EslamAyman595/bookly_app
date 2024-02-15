import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
const SplashViewBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Image.asset(AssetsData.logo)
      ],
    );
  }
}