import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAboutSection extends StatelessWidget {
  const CustomAboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About this course',
            style:
                AppStyles.textStyle14.copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, ',
            style: AppStyles.textStyle12.copyWith(
                color: AppColorLight.captionTextColor, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
