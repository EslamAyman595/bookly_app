import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio:
                2.7 / 4, //sized boxبيجفظ على نسبة الطول والعرض حتى لو اتغير
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.test,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Herry Potter and the Golabet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
                const SizedBox(
            height: 3,
          ),
              Text(
                'K J drawing',
                style: Styles.textStyle14.copyWith(fontFamily: kGTSetraFine),
              ),
              const SizedBox(
            height: 3,
          ),
              Row(
                children: [
                  Text(
                    '999,33%',
                    style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
