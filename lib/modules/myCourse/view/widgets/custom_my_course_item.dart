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
          color: Color(0xff3787FF),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 24.0, left: 19, right: 11, bottom: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product',
                style: TextStyle(fontSize: 14.4, color: Colors.white),
              ),
              Text(
                'Design v1.0',
                style: TextStyle(fontSize: 14.4, color: Colors.white),
              ),
              Expanded(child: SizedBox()),
              CustomRectangle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '14',
                        style: TextStyle(
                            fontSize: 14.4,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        '/',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        '8',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.play_circle_fill_sharp,
                    color: Colors.black,
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
