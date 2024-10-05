import 'package:e_learning_app/modules/onboarding/views/onboarding_login_view.dart';
import 'package:e_learning_app/modules/onboarding/views/onboarding_start_view.dart';
import 'package:e_learning_app/modules/splash/splash_view.dart';
import 'package:get/get.dart';

class AppGetPages {
  static const onboardingStartView='/onboardingStartView';
  static const onboardingLogintView='/onboardingLogintView';
  static final getPages=  [
        GetPage(name: '/', page: () => const SplashView(), ),
        GetPage(name: onboardingStartView, page: () => const OnboardingStartView(), ),
        GetPage(name: onboardingLogintView, page: () => const OnboardingLoginView(), ),
      ];
  
}