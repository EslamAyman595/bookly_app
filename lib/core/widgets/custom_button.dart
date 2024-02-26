import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text,required this.color,this.borderRadius, required this.textColor,required this.onPressed}) : super(key: key);
final  String text;
final Color textColor;
final Color color;
final BorderRadius? borderRadius;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12)),
      color: color,
      textColor: textColor,
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
