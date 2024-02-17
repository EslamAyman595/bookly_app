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
            child: CustomItem(),
          );
        },
      ),
    );
  }
}