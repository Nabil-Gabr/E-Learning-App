import 'package:e_learning_app/modules/onboarding/views/onboarding_start_view.dart';
import 'package:e_learning_app/modules/splash/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  //createAnimation
  //Step 1:Convert from stl to stf & SingleTickerProviderStateMixin
  //Step 2:Create  two object from(AnimationController&Animation<Offset>)
  late AnimationController animatedContainer;
  late Animation<Offset> sildingAnimation;

  //Step 3:initState
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    Future.delayed(
      const Duration(seconds: 3,),(){
        Get.to(()=>const OnboardingStartView(),transition: Transition.fade,duration: const Duration(milliseconds: 250));
      }
    );
  }

  //Step 4:dispose
  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 172,
        height: 172,
        decoration: const  BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            SlidingText(sildingAnimation: sildingAnimation),
            
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {

    //Step 3/1:AnimationController in initState
    animatedContainer=AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    //Step 3/2:Tween<Offset> in initState
    sildingAnimation=Tween<Offset>(begin: const Offset(2, 0),end: Offset.zero).animate(animatedContainer );

    //Step 3/3:animatedContainer.forward() in initState
    animatedContainer.forward();
  }
}
