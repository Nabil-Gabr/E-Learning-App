import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:e_learning_app/modules/onboarding/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomPageViewLogin extends GetView<OnboardingControllerRepoImpl> {
  const CustomPageViewLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .73,
      child: PageView.builder(
            itemCount: onboardingLoginList.length,
            itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * .5,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      left: 75, right: 75, top: 85, bottom: 21),
                  decoration: const BoxDecoration(
                    color: AppColorLight.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Image.asset(onboardingLoginList[index].image!),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          onboardingLoginList[index].title!,
                          style: AppStyles.textStyle25,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        onboardingLoginList[index].subTitle!,
                        style: AppStyles.textStyle25,
                            textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }
}