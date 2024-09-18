import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap ;
  final  double? fontSize;
  final String text;
  final double width;
  final double height;
  final double borderRadius;
  const CustomButton({super.key, this.onTap, required this.text, this.fontSize, required this.width, required this.height, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColorLight.seconderyColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))
          ),
          child:  Text(text,style: TextStyle(fontSize: fontSize,color: AppColorLight.primaryColor),),
        ),
      ),
    );
  }
}