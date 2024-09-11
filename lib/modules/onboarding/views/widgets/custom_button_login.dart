import 'package:e_learning_app/modules/onboarding/controller/onboarding_controller/onboarding_controller_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomButtomLogin extends GetView<OnboardingControllerRepoImpl> {
  final void Function()? onTap;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final String textButton;
  const CustomButtomLogin({
    super.key,
    this.onTap,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    required this.textButton

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration:  BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
      
        child: Text(textButton,style: TextStyle(fontSize: 18, color: textColor),),
      ),
    );
  }
}