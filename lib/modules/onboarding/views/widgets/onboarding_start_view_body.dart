import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/widgets/custom_button_app.dart';
import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:e_learning_app/modules/onboarding/views/widgets/custtom_page_view_start.dart';
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
        Padding(padding: EdgeInsets.only(bottom: 40.0),
        child: CustomButtonApp(
          textButton: 'Next',
          height: 68,
          width: 197,
          backgroundColor: AppColorLight.bottunBackgroundColor,
          textColor: AppColorLight.textBottunColor,
        ),),
      ],
    );
  }
}






















