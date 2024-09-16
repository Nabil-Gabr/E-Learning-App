import 'package:e_learning_app/core/widgets/custom_button_app.dart';
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
    return const Column(
      children: [
        CustomPageViewLogin(),
        SizedBox(height: 25,),

        CustomButtonApp(textButton: 'Student',height: 50,width: 354,backgroundColor: Color(0xff3787FF),textColor: Color(0xffFFFFFF),),
        SizedBox(height: 15,),
        Padding(
          padding: EdgeInsets.only(bottom: 40.0),
          child: CustomButtonApp(textButton: 'Teacher',height: 50,width: 354,backgroundColor: Color(0xffFFFFFF),textColor: Color(0xff3787FF,),)
          
        ),
      ],
    );
  }
}