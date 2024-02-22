import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class SimilairBooksListView extends StatelessWidget {
const SimilairBooksListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //itemCount: 8,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6),
            child: CustomItem(
              imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=Z%2fPIeIRD&id=2F59B1EFBEC4233A112302E1FB757DC874671FB4&thid=OIP.Z_PIeIRDajXPmZHROt-T_QHaEK&mediaurl=https%3a%2f%2fjooinn.com%2fimages%2flonely-tree-reflection-3.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.67f3c87884436a35cf9991d13adf93fd%3frik%3dtB9ndMh9dfvhAg%26pid%3dImgRaw%26r%3d0&exph=2160&expw=3840&q=images&simid=608035802041376226&FORM=IRPRST&ck=70D5AA6FBCFB7F73044E9E200DB75CB7&selectedIndex=1&itb=0',
            ),
          );
        },
      ),
    );
  }
}