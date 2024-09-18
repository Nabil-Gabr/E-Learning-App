import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomRectangle extends StatelessWidget {
  const CustomRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    double currenSliderValue = 50;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
          activeColor: AppColorLight.primaryColor,
          inactiveColor: AppColorLight.headKineTextColor,
          thumbColor: AppColorLight.seconderyColor,
          value: currenSliderValue,
          max: 100,
          min: 0,
          label: currenSliderValue.round().toString(),
          onChanged: (double value) {
            currenSliderValue = value;
          },
        ),
        Text(
          'Completed',
          style: AppStyles.textStyle12.copyWith(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
