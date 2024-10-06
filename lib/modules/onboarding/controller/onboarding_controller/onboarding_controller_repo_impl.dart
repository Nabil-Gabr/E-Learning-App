import 'package:e_learning_app/core/utils/app_get_pages.dart';
import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo.dart';
import 'package:e_learning_app/modules/onboarding/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControllerRepoImpl extends OnboardingControllerRepo {
  late PageController pageControllerStart;
  int currenPageStart = 0;
  String textS = 'Next';

  @override
  nextStart() {
    currenPageStart++;
    if (currenPageStart > onboardingStartList.length - 1) {
      Get.toNamed( AppGetPages.onboardingLogintView);
    } else {
      if (currenPageStart + 1 == onboardingStartList.length) {
        textS = 'Get Started';
        update();
      }
      pageControllerStart.animateToPage(currenPageStart,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
      update();
    }
  }

  @override
  onPageChangedStart(int index) {
    currenPageStart = index;
    update();
  }

  @override
  void onInit() {
    pageControllerStart = PageController();
    super.onInit();
  }
}
