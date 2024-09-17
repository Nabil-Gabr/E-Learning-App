import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:e_learning_app/modules/onboarding/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomPageViewStart extends GetView<OnboardingControllerRepoImpl> {
  const CustomPageViewStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .73,
      child: PageView.builder(
        onPageChanged: (value) {
          controller.onPageChangedStart(value);
        },
        controller: controller.pageControllerStart,
        itemCount: onboardingStartList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .5,
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 75, right: 75, top: 85, bottom: 21),
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Image.asset(onboardingStartList[index].image!),
            ),
            const Flexible(
              child: SizedBox(
                height: 65,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                children: [
                  Text(
                    onboardingStartList[index].title!,
                    style: AppStyles.textStyle25,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    onboardingStartList[index].subTitle!,
                    style: AppStyles.textStyle12.copyWith(
                        color: const Color(0xff767372),
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
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
