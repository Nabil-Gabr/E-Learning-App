import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              const Expanded(
                  child: Text(
                "01",
                style: AppStyles.textStyle24,
              )),
              Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to the Course',
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColorLight.captionTextColor),
                          ),
                          Text(
                            '6:10  ' '6:10',
                            style: AppStyles.textStyle12
                                .copyWith(color: AppColorLight.bodyTextColor),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.play_circle_fill,
                        color: AppColorLight.seconderyColor,
                        size: 44,
                      ),
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
