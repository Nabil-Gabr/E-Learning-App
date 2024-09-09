import 'package:e_learning_app/core/constant/image_asset.dart';
import 'package:e_learning_app/views/splash/widgets/textLogo.dart';
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
              AppImageAsset.symbolImage,
              width: 71.3,
              height: 54.47,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 8,),
            TextLogo(fontSize: 13,),
            
          ],
        )
      );
        
      },
    );
  }
}
