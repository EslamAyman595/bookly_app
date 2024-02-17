import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
const SearchResultListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      //shrinkWrap: true,
      //physics:const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 7,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
        );
  }
}