import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

// abstract مش هاخد منوobject
abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal, //regular
  );
  static const textStyle30 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w900, //regular
      fontFamily: kGTSetraFine);
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal, //regular
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500, //regular
  );
}
