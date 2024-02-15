import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
const ListViewItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CustomItem();
      },
    );
  }
}