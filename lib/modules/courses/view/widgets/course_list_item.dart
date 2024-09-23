import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/courses/data/datasource/course_list_item_model.dart';
import 'package:flutter/material.dart';

class CourseListItem extends StatelessWidget {
  const CourseListItem({super.key, required this.itemModel});

  final CourseListItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
          color: AppColorLight.primaryColor ,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: 68,
                height: 68,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(68)),
                ),
      
                child: Center(child: Image.asset(itemModel.image),),
              )
            ),
            const SizedBox(width: 35,),
            Expanded(
              flex: 3,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(itemModel.title,style: AppStyles.styleMedium14,),
                  const SizedBox(height: 4,),
                  Row(
                    children: [
                      const Icon(Icons.person,size: 12,color: Color(0xff767372),),
                      const SizedBox(width: 4,),
                      Text(itemModel.namePerson,style: AppStyles.styleMedium12,),
                    ],
                  ),
                  const SizedBox(height: 4,),
                  Row(
                    children: [
                     Text(itemModel.price,style: AppStyles.styleSemiBold16,),
                      const SizedBox(width: 4,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: const BoxDecoration(
                          color: AppColorLight.seconderyColor,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child:  Text(itemModel.hours,style: AppStyles.styleRegular10,),
                      )
                      
                      
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}