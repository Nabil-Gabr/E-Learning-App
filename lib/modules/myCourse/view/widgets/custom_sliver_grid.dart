import 'package:e_learning_app/modules/myCourse/view/widgets/custom_my_course_item.dart';
import 'package:flutter/material.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 16,
        childAspectRatio: 0.9,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return const CustomMyCourseItem();
      },
    );
  }
}
