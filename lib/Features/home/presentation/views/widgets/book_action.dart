import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              color: Colors.white,
              textColor: Colors.black,
              text: '99999',
              borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomButton(
              color: Color(0xffEF8262),
              textColor: Colors.white,
              text: '99999',
              borderRadius: BorderRadius.horizontal(right: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
