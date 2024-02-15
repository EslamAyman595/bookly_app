import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/constant.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      //initialRoute:'/splahview ',
      
      
      // routes: {
      //   '/splahview':(context)=> const SplashView(),,
      //   '/homeview':(context)=> const HomeView(),

      // },
      // getPages:[ 
      // GetPage(
      
      //   name:'/splahview' , page: ()=>  SplashView(),transition: Transition.fadeIn,transitionDuration: kTransitionDuration,
      
      //   ),
      //   GetPage(name: '/homeview', page: ()=>  HomeView())
      //   ],
      
       home :const SplashView(),
    );
  }
}
