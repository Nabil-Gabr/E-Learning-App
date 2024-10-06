import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/widgets/custom_button_app.dart';
import 'package:e_learning_app/main.dart';
import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:e_learning_app/modules/onboarding/views/widgets/custom_page_view_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';

class OnboardingLoginViewBody extends StatelessWidget {
  const OnboardingLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerRepoImpl());
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomPageViewLogin(),
          const SizedBox(
            height: 25,
          ),
          CustomButtonApp(
            onTap: () {
              sharedPreferences.setString('role', 'Student');
              print('===============================${sharedPreferences.getString('role')}');
            },
            textButton: 'Student',
            height: 50,
            width: 354,
            backgroundColor: AppColorLight.bottunBackgroundColor,
            textColor: AppColorLight.textBottunColor,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: CustomButtonApp(
                onTap: () {
                  sharedPreferences.setString('role', 'Teacher');
                  print('===============================${sharedPreferences.getString('role')}');
                },
                textButton: 'Teacher',
                height: 50,
                width: 354,
                backgroundColor: const Color(0xffFFFFFF),
                textColor: const Color(
                  0xff3787FF,
                ),
              )),
        ],
      ),
    );
  }
}
