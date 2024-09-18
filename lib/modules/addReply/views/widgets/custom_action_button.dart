import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Liked',
                style: AppStyles.textStyle12.copyWith(
                    color: AppColorLight.seconderyColor,
                    fontWeight: FontWeight.normal)),
            const SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text('Reply',
                    style: AppStyles.textStyle12.copyWith(
                        color: AppColorLight.captionTextColor,
                        fontWeight: FontWeight.normal))),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.thumb_up_off_alt,
              color: AppColorLight.seconderyColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text('21',
                style: AppStyles.textStyle11
                    .copyWith(color: AppColorLight.seconderyColor)),
          ],
        ),
      ],
    );
  }
}
