import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomRowChoiceCourse extends StatelessWidget {
  const CustomRowChoiceCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Choice your course',style: AppStyles.styleMedium20,),
            Text('See all',style: AppStyles.styleRegular14,),
          ],
        ),
      ),
    );
  }
}