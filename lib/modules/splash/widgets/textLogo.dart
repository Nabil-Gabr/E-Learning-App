import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({super.key, required this.fontSize});
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return  Text(
          "Education app",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: fontSize,color: AppColorLight.seconderyColor),
        );
  }
}