import 'package:e_learning_app/modules/addReply/views/add_reply_details_view.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/add_reply_view.dart';
import 'package:e_learning_app/modules/onboarding/views/onboarding_login_view.dart';
import 'package:e_learning_app/modules/onboarding/views/onboarding_start_view.dart';
import 'package:e_learning_app/modules/splash/splash_view.dart';
import 'package:get/get.dart';

class AppGetPages {
  static const onboardingStartView='/onboardingStartView';
  static const onboardingLogintView='/onboardingLogintView';
  static const addReplyView='/addReplyView';
  static const addReplyDetailsView='/addReplyDetailsView';
  static final getPages=  [
        GetPage(name: '/', page: () => const SplashView(), ),
        GetPage(name: onboardingStartView, page: () => const OnboardingStartView(), ),
        GetPage(name: onboardingLogintView, page: () => const OnboardingLoginView(), ),
        GetPage(name: addReplyView, page: () => const AddReplyView(), ),
        GetPage(name: addReplyDetailsView, page: () => const AddReplyDetailsView(), ),
      ];
  
}