import 'package:device_preview/device_preview.dart';
import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_get_pages.dart';
import 'package:e_learning_app/modules/level/views/track_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';


 late SharedPreferences sharedPreferences ;
 //Values used so far are : 
 //1-sharedPreferences.setString('role', 'Student' or Teacher);
 //2-sharedPreferences.setStringList('selectLevel', list(shooce level) ),

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences =await SharedPreferences.getInstance();
  // runApp(const MyApp());
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(), // Wrap your app
  ));

  print('role===============================${sharedPreferences.getString('role')}');
  print('selectLevel===========================${sharedPreferences.getStringList('selectLevel')}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColorLight.scaffoldBackgroundColor,
      ),
      
      getPages: AppGetPages.getPages,//Task 1: SplashView & OnboardingStartView & OnboardingLoginView
      // home: const TrackView(),//Task 2: TrackView  & LevelView
      
      
      //home: const AddReplyView(),-->Task 3 : AddReplyView 
      //home: const CoursesView(),--->Task 4 : CoursesView & MyCourseView & CourseDetailsView
      //home: const NavigationTabBar()Task 5 : NavigationTabBar & teacherstView
    );
  }
}