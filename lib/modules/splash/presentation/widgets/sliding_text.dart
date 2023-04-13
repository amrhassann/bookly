import 'package:flutter/material.dart';

class SlidingTextWidget extends StatelessWidget {
  const SlidingTextWidget({Key? key, required this.slidingAnimation})
      : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                'Find Your Favourite Books Free',
                textAlign: TextAlign.center,
              ));
        });
  }
}
