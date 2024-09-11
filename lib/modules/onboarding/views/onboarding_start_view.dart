import 'package:e_learning_app/modules/onboarding/views/widgets/onboarding_start_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingStartView extends StatelessWidget {
  const OnboardingStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:OnboardingStartViewBody() ,
      ),
    );
  }
}