import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomColumnBestSeller extends StatelessWidget {
  const CustomColumnBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 26,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: AppColorLight.seconderyColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Text(
              'BESTSELLER',
              style:
                  AppStyles.textStyle12.copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Product',
            style:
                AppStyles.textStyle14.copyWith(fontWeight: FontWeight.normal),
          ),
          Text(
            'Design v1.0',
            style:
                AppStyles.textStyle14.copyWith(fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
