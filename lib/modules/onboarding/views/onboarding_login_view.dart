import 'package:e_learning_app/modules/onboarding/views/widgets/onboarding_login_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingLoginView extends StatelessWidget {
  const OnboardingLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnboardingLoginViewBody(),
      ),
    );
  }
}