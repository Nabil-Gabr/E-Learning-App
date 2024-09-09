import 'package:e_learning_app/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:e_learning_app/views/onboarding/widgets/custom_button.dart';
import 'package:e_learning_app/views/onboarding/widgets/custtom_page_view_start.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';

class OnboardingStartViewBody extends StatelessWidget {
  const OnboardingStartViewBody({super.key});
  

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerRepoImpl());
    return const Column(
      children: [
        CustomPageViewStart(),
        Expanded(child: SizedBox()),
        Padding(padding: EdgeInsets.only(bottom: 40.0),child: CustomButtom(),),
      ],
    );
  }
}






















