import 'package:bookly_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

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
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    // animationController.reverse();
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
        SizedBox(
          height: 5,
        ),
        SlidingText(slideAnimation: slideAnimation)
      ],
    );
  }
}
