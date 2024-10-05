import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_get_pages.dart';
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
      // home: const SplashView(),
      getPages: AppGetPages.getPages,
      
      //home: const SplashView(),---->Task 1 : SplashView & OnboardingStartView & OnboardingLoginView
      //home: const TrackView() ,---->Task 2 : TrackView  & LevelView
      //home: const AddReplyView(),-->Task 3 : AddReplyView 
      //home: const CoursesView(),--->Task 4 : CoursesView & MyCourseView & CourseDetailsView
      //home: const NavigationTabBar()Task 5 : NavigationTabBar & teacherstView
    );
  }
}