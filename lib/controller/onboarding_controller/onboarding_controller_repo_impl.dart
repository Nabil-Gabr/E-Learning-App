import 'package:e_learning_app/controller/onboarding_controller/onboarding_controller_repo.dart';
import 'package:e_learning_app/data/datasource/static/static.dart';
import 'package:e_learning_app/views/onboarding/onboarding_login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControllerRepoImpl extends OnboardingControllerRepo {

  late PageController pageControllerStart;
  int currenPageStart=0;

  @override
  nextStart() {
    currenPageStart++;
    if (currenPageStart > onboardingStartList.length -1) {
      Get.to(()=> const OnboardingLoginView());
    }else{
      pageControllerStart.animateToPage(currenPageStart, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
      update();
    }
    
  }

  @override
  onPageChangedStart(int index) {
    currenPageStart=index;
    update();
  }

  @override
  void onInit() {
    pageControllerStart=PageController();
    super.onInit();
  }
  
  
  
  
}