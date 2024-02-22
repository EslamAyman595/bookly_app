import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class CustomItem extends StatelessWidget {
  const CustomItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * .23,
        //   child:
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
                aspectRatio: 2 / 2.6, //sized boxبيجفظ على نسبة الطول والعرض حتى لو اتغير
                child:CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          placeholder: (context, url) =>const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error),
          )
              ),
        );
  }
}
// Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: NetworkImage(
//                 imageUrl,
//               ),
//             )),
//       ),
