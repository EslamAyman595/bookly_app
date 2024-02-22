import 'package:flutter/material.dart';

class CustomLoadingIndacitor extends StatelessWidget {
const CustomLoadingIndacitor({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Center(child: CircularProgressIndicator());
  }
}