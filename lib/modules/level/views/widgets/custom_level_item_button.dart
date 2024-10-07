import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomLevelItemButton extends StatelessWidget {
  final String textLevel;
  final String ageLevel;
  final double? height;
  final bool asActive;
  final void Function()? onTap;
  const CustomLevelItemButton({
    super.key, 
    this.height,
    this.onTap,
    required this.asActive,
    required this.textLevel, 
    required this.ageLevel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(textLevel,style:  AppStyles.textStyle12.copyWith(color: asActive ? AppColorLight.seconderyColor : AppColorLight.bodyTextColor,fontWeight: FontWeight.normal),),
          const Flexible(child: SizedBox(height: 19,)),
          Container(
            height: 54,
            alignment: Alignment.center,
            decoration:  BoxDecoration(
              color: asActive ? AppColorLight.seconderyColor : AppColorLight.primaryColor,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: Text(ageLevel,style: AppStyles.textStyle16,textAlign: TextAlign.center,),
          ),
          Container(
            height: height,
            alignment: Alignment.center,
            decoration:  BoxDecoration(
              border: Border.all(
                width: 2,
                color: asActive ? AppColorLight.seconderyColor : AppColorLight.captionTextColor,
              ) ,
              color: AppColorLight.captionTextColor,
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Image.asset(Assets.imagesMan1),
          ),
        ],
      ),
    );
  }
}