import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomLearnedToda extends StatelessWidget {
  const CustomLearnedToda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColorLight.seconderyColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Learned today',
              style:
                  AppStyles.textStyle12.copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              '46min ' '/' ' 60min',
              style: AppStyles.textStyle12,
            ),
          ],
        ),
      ),
    );
  }
}
