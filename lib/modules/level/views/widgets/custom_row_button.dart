import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/modules/level/views/level_view.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomRowButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomRowButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(onPressed: onPressed, child: const Text('Skip',style: TextStyle(fontSize: 15,color: AppColorLight.bodyTextColor),)),
           CustomButton(text: 'Continue',fontSize: 17.2, width: 110, height: 110, borderRadius: 110,onTap: () {
             Get.to(()=> const LevelView());
           },),
        ],
      ),
    );
  }
}