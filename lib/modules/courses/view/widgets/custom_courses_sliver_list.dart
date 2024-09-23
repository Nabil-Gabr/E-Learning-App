import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/modules/courses/data/datasource/course_list_item_model.dart';
import 'package:e_learning_app/modules/courses/view/widgets/course_list_item.dart';
import 'package:e_learning_app/modules/myCourse/view/my_course_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCoursesSliverList extends StatelessWidget {
  const CustomCoursesSliverList({super.key});
 
  static const List<CourseListItemModel> itemList=[
    CourseListItemModel(
      image: Assets.imagesProductDesign, 
      title: 'Product Design v1.0', 
      namePerson: 'Robertson Connie', 
      price: r'$190', 
      hours: '16 hours'
    ),

    CourseListItemModel(
      image: Assets.imagesJavaDevelopment, 
      title: 'Java Development', 
      namePerson: 'Nguyen Shane', 
      price: r'$190', 
      hours: '16 hours'
    ),

    CourseListItemModel(
      image: Assets.imagesVisualDesign, 
      title: 'Visual Design', 
      namePerson: 'Bert Pullman', 
      price: r'$250', 
      hours: '14 hours'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount:itemList.length ,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(()=>const MyCourseView());
          },
          child: CourseListItem(itemModel: itemList[index]));
      },
    );
  }
}