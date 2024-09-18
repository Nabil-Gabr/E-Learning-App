import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomLevel extends StatelessWidget {
  final String textLevel;
  final String ageLevel;
  final double? height;
  const CustomLevel({
    super.key, 
    this.height,
    required this.textLevel, 
    required this.ageLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(textLevel,style:  AppStyles.textStyle12.copyWith(color: AppColorLight.bodyTextColor,fontWeight: FontWeight.normal),),
        const Flexible(child: SizedBox(height: 19,)),
        Container(
          height: 54,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppColorLight.primaryColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Text(ageLevel,style: AppStyles.textStyle16,textAlign: TextAlign.center,),
        ),
        Container(
          height: height,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppColorLight.captionTextColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
          ),
          child: Image.asset('asset/images/man1.png'),
        ),
      ],
    );
  }
}