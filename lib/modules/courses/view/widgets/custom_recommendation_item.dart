import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/courses/data/datasource/recommendation_item_model.dart';
import 'package:flutter/material.dart';

class CustomRecommendationItem extends StatelessWidget {
  const CustomRecommendationItem({
    super.key, required this.itemModel,
  });
  final RecommendationItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      decoration: const BoxDecoration(
          color: AppColorLight.seconderyColor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
          top: -30,
          child: Image.asset(itemModel.image,height: 108,)),
    
          Positioned(
          right: 0,
          bottom: 20,
          child:Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15))
            ),
            child:  Text(itemModel.title,style: AppStyles.styleMedium14.copyWith(color: AppColorLight.seconderyColor),),
          ) ,
          )
        ],
      ),
    
      
    );
  }
}