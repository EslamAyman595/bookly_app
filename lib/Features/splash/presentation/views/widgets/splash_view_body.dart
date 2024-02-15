import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    // animationController.reverse();
    navigateToHome();
  }

  

  
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          CrossAxisAlignment.stretch, //ممكن تاخدوwidth اكبر children    تاخد

      children: [
        Image.asset(AssetsData.logo),
       const SizedBox(
          height: 5,
        ),
        SlidingText(slideAnimation: slideAnimation)
      ],
    );
  }
  void initSlidingAnimation() {
     animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation = Tween<Offset>(begin:const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed( const Duration(seconds: 2),(){
      Get.to( ()=>const  HomeView(),transition: Transition.fadeIn,duration: kTransitionDuration);
    });
  }

}
