
import 'package:bookly_app/Features/search/presentation/views/widgets/search_view_bodyy.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
const SearchView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SafeArea(child: SearchViewBodyy()),
    );
  }
}