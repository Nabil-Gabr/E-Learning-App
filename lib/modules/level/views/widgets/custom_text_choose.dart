import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextChoose extends StatelessWidget {
  final String text;
  const CustomTextChoose({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(text,style: AppStyles.textStyle30),
          );
  }
}