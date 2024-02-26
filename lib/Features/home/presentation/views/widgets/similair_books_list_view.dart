import 'package:bookly_app/Features/home/presentation/manger/fetch_simialar_books_cubit/cubit/fetchsimialirbookscubit_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indacitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilairBooksListView extends StatelessWidget {
  const SimilairBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Fetchsimialirbookscubit, FetchsimialirbooksState>(
      builder: (context, state) {
        if ( state is FetchsimialirbooksSuccess){
              return SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(horizontal: 6),
                child: CustomItem(
                  imageUrl:
                  state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                ),
              );
            },
          ),
        );
        }else if(state is FetchsimialirbooksFailure)
        {
          print('${state.message.toString()}');
          return CustomErrorWidget(errMessage: state.message);
        }
        else{
          return CustomLoadingIndacitor();
        }
       
      },
    );
  }
}
