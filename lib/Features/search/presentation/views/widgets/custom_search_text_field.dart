// import 'package:bookly_app/Features/search/presentation/manager/cubit/searchbook_cuit_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class CustomSearchTextField extends StatelessWidget {
//    CustomSearchTextField({super.key});
// String?  categoryName;
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onSubmitted: (data) {
//         categoryName =data;


//         BlocProvider.of<SearchbookCubit>(context).fetchSearchBooks(categoryName: categoryName!);
//         BlocProvider.of<SearchbookCubit>(context).categoryName=categoryName;
//       },
//         decoration: InputDecoration(
//       suffixIcon: IconButton(
//         onPressed: () {},
//         icon: const Icon(
//           FontAwesomeIcons.magnifyingGlass,
//           size: 24,
//         ),
        
//       ),
//       hintText: 'search',
//      enabledBorder: BulidOutlineIputBorder(),
//      focusedBorder: BulidOutlineIputBorder()
//     ));
//   }

//   OutlineInputBorder BulidOutlineIputBorder() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(10),
//       borderSide: const BorderSide(color: Colors.white),
//     );
//   }
// }
