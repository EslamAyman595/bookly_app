import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
       child :    Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: CustomAppBar(),
               ),
               FeaturedBooksListView(),
               SizedBox(
                 height: 22,
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: Text(
                   'Newsed Books',
                   style: Styles.textStyle18,
                 ),
               ),
               //  SizedBox(
               //   height: 20,
               // ),
              
             ],
           )
        ),
        SliverFillRemaining(
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal:20 ),
            child: BestSellerItemListView(),
          ),
        )
      ],
     );

   
  }
}
