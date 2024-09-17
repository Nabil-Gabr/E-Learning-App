import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomPriceSection extends StatelessWidget {
  const CustomPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Design v1.0',
                style: AppStyles.textStyle14
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              const Text(r'$74.00', style: AppStyles.textStyle20)
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            '6h 14min · 24 Lessons',
            style: AppStyles.textStyle12.copyWith(
                color: const Color(0xff767372), fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
