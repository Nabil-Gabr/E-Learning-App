import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarBottomTabBar extends StatelessWidget {
  const CustomAppBarBottomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(Assets.imagesArrowLeft)),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 23,
              color: AppColorLight.bodyTextColor,
            )),
      ],
    );
  }
}
