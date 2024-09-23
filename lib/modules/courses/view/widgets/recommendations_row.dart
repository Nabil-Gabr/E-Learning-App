import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/modules/courses/data/datasource/recommendation_item_model.dart';
import 'package:e_learning_app/modules/courses/view/widgets/custom_recommendation_item.dart';
import 'package:flutter/material.dart';

class RecommendationsRow extends StatelessWidget {
  const RecommendationsRow({super.key});

  static const List<RecommendationItemModel>itemList=[
    RecommendationItemModel(image: Assets.imagesLanguege, title: 'Languege'),
    RecommendationItemModel(image: Assets.imagesPainting, title: 'Painting'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: CustomRecommendationItem(itemModel: itemList[0],),
          ),
          const SizedBox(width: 15,),
          Expanded(
            child: CustomRecommendationItem(itemModel: itemList[1],),
          ),
        ],
      ),
    );
  }
}


