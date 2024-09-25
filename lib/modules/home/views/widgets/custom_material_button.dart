import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton(
      {super.key,
      this.onPressed,
      required this.icon,
      required this.currentTabindex, required this.text, required this.image});
  final void Function()? onPressed;
  final IconData icon;
  final bool currentTabindex;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 40,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: deprecated_member_use
          SvgPicture.asset(image,color: currentTabindex ? AppColorLight.seconderyColor : AppColorLight.bodyTextColor,),
          Text(
            text,
            style: AppStyles.styleRegular10.copyWith(
              color: currentTabindex ? AppColorLight.seconderyColor : AppColorLight.bodyTextColor,
            ),
          )
        ],
      ),
    );
  }
}
