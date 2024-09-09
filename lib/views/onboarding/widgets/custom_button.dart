import 'package:e_learning_app/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomButtom extends GetView<OnboardingControllerRepoImpl> {
  const CustomButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.nextStart();
      },
      child: Container(
        alignment: Alignment.center,
        height: 68,
        width: 197,
        decoration: const BoxDecoration(
          color: Color(0xff3787FF),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      
        child: const Text('Next',style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),),
      ),
    );
  }
}