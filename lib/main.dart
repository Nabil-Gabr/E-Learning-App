import 'package:e_learning_app/modules/addReply/views/add_reply_view.dart';
import 'package:e_learning_app/modules/courseDetails/view/course_details_view.dart';
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
        scaffoldBackgroundColor: const  Color(0xffE4F1F8)
      ),
      home: const MyCourseView(),
      // const AddReplyView(),
      // const TrackView(),
      // const SplashView(),
    );
  }
}