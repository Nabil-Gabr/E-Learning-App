import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/courseDetails/view/course_details_view.dart';
import 'package:e_learning_app/modules/myCourse/view/widgets/custom_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMyCourseItem extends StatelessWidget {
  const CustomMyCourseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const CourseDetailsView());
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColorLight.seconderyColor,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24.0, left: 19, right: 11, bottom: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product',
                style: AppStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColorLight.primaryColor),
              ),
              Text(
                'Design v1.0',
                style: AppStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColorLight.primaryColor),
              ),
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomRectangle(),
                  Text(
                    'Completed',
                    style: AppStyles.textStyle12
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '14',
                        style: AppStyles.textStyle14.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColorLight.primaryColor),
                      ),
                      Text(
                        '/',
                        style: AppStyles.textStyle12
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '8',
                        style: AppStyles.textStyle12
                            .copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.play_circle_fill_sharp,
                    color: AppColorLight.headKineTextColor,
                    size: 44,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
