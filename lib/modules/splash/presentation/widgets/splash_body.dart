import 'package:d_books/core/manager/assets_mananger.dart';
import 'package:d_books/core/manager/constants.dart';
import 'package:d_books/modules/home/presentation/screens/home_screen.dart';
import 'package:d_books/modules/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatedContainer;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    _initSlidingAnimation();
    _navigateToNextScreen();
    super.initState();
  }

  @override
  void dispose() {
    _animatedContainer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsManager.logo),
        SlidingTextWidget(
          slidingAnimation: _slidingAnimation,
        ),
      ],
    );
  }

  void _initSlidingAnimation() {
    _animatedContainer =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(_animatedContainer);
    _animatedContainer.forward();
  }

  _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeScreen(),
        transition: Transition.fade,
        duration: kTransitionDuration,
      );
    });
  }
}
