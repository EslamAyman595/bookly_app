

import 'package:bookly_app/Features/search/presentation/manager/cubit/searchbook_cuit_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBodyy extends StatefulWidget {
  const SearchViewBodyy({Key? key}) : super(key: key);

  @override
  State<SearchViewBodyy> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBodyy> {
  var textController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: BlocBuilder<SearchbookCubit, SearchbookState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                controller: textController,
                icon: FontAwesomeIcons.magnifyingGlass,
                hintText: 'Enter Your Book',
                labelText: 'Search Now',
                onFieldSubmitted: (data) {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<SearchbookCubit>(context).fetchSearchBooks(categoryName: data);
                   // SearchbookCubit.of(context).
                    //SearchbookCubit.get(context).getSearchBook(category: data);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter the name of book !';
                  }
                  return null;
                },
                onPressedIcon: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<SearchbookCubit>(context).fetchSearchBooks(categoryName:textController.text);
                    // SearchbookCubit.get(context)
                    //     .getSearchBook(category: textController.text);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state is SearchbookInitial)
                      Center(
                        child: Text(
                          'Search For Show Books',
                          style:
                              Styles.textStyle20.copyWith(color: Colors.grey),
                        ),
                      )
                    else if (state is SearchbookLoading)

                   const CircularProgressIndicator(),
//const SearchResultLoadingIndicator(),
                    if (state is SearchbookSuccess)
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text(
                                'Search Result',
                                style: Styles.textStyle18,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: SearchResultListView(
                                bookModel: state.books,
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (state is SearchbookFailure)
                    // print(state.message.toString());
                     CustomErrorWidget(errMessage: state.message.toString()),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
