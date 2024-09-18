import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const textStyle11 = TextStyle(
    fontSize: 11,
    color: AppColorLight.primaryColor,
  );

  static const textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColorLight.primaryColor,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14.4,
    fontWeight: FontWeight.w500,
    color: AppColorLight.bodyTextColor,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    color: AppColorLight.bodyTextColor
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    color: AppColorLight.primaryColor
  );

  static const textStyle25 = TextStyle(
    fontSize: 25,
    color: AppColorLight.bodyTextColor
  );

  static const textStyle20 = TextStyle(
      fontSize: 20, 
      color: AppColorLight.bodyTextColor, 
      fontWeight: FontWeight.w600
    );

    static const textStyle24 = TextStyle(
      fontSize: 24, 
      color: AppColorLight.bodyTextColor, 
      fontWeight: FontWeight.w500
    );

    static const textStyle30 = TextStyle(
      fontSize: 30, 
    );
}
