import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/modules/splash/widgets/textLogo.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.sildingAnimation,
  });

  final Animation<Offset> sildingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sildingAnimation,
      builder: (context, _) {
        return  SlideTransition(
        position: sildingAnimation,
        child:  Column(
          children: [
            Image.asset(
              Assets.imagesSymbol,
              width: 71.3,
              height: 54.47,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 8,),
            const TextLogo(fontSize: 13,),
            
          ],
        )
      );
        
      },
    );
  }
}
