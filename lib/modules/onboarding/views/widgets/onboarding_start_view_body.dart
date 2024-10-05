import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/widgets/custom_button_app.dart';
import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:e_learning_app/modules/onboarding/views/widgets/custtom_page_view_start.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingStartViewBody extends StatelessWidget {
  const OnboardingStartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerRepoImpl());
    return Column(
      children: [
        const CustomPageViewStart(),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: GetBuilder<OnboardingControllerRepoImpl>(
            init: OnboardingControllerRepoImpl(),
            builder: (ctrl)=>CustomButtonApp(
            
            onTap: () {
              ctrl.nextStart();
            },
            textButton: '${ctrl.textS}' ,
            height: 68,
            width: 197,
            backgroundColor: AppColorLight.bottunBackgroundColor,
            textColor: AppColorLight.textBottunColor,
          )),
        ),
      ],
    );
  }
}
