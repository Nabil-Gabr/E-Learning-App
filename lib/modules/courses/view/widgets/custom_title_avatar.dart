import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleAvatar extends StatelessWidget {
  const CustomTitleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Course',
            style: AppStyles.styleMedium30,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(36)),
            child: Image.asset(Assets.imagesAvatar),
          )
        ],
      ),
    );
  }
}
