import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * .23,
        //   child:
        AspectRatio(
      aspectRatio: 2 / 2.3, //sized boxبيجفظ على نسبة الطول والعرض حتى لو اتغير
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
    );
  }
}
