import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/modules/courses/view/courses_view.dart';
import 'package:e_learning_app/modules/myCourse/view/my_course_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColorLight.scaffoldBackgroundColor,
      ),
      home: const CoursesView(),
      // const MyCourseView(),
      // const AddReplyView(),
      // const TrackView(),
      // const SplashView(),
    );
  }
}