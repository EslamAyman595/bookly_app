import 'package:bookly_app/Features/home/presentation/manger/newest_books_cubit/cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indacitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksCubitState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
           return ListView.builder(
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
        }
        else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.message);

        }
        else {
          return CustomLoadingIndacitor();
        }
       
      },
    );
  }
}
