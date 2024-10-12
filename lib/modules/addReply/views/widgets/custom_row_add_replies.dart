import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomRowAddReplies extends StatelessWidget {
  const CustomRowAddReplies({
    super.key, this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            '1 Replies',
            style:
                AppStyles.textStyle14.copyWith(color: AppColorLight.captionTextColor,fontWeight: FontWeight.normal),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 106,
              height: 41,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColorLight.seconderyColor,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child:  Text(
                'Add reply',
                style: AppStyles.textStyle14.copyWith(color: AppColorLight.primaryColor,fontWeight: FontWeight.normal),
              ),
            ),
          )
        ],
      ),
    );
  }
}