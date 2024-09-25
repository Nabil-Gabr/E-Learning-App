import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/home/data/models/best_seller_book_item_model.dart';
import 'package:e_learning_app/modules/home/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key, required this.itemModel,
  });

  final BestSellerBookItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.119,
          child: CustomBookImage(imageUrl: itemModel.imageUrl),
        ),
        Text(itemModel.title,
            style: AppStyles.styleMedium12.copyWith(
              color: AppColorLight.bodyTextColor,
            )),
        Text(itemModel.authorName,
            style: AppStyles.styleRegular10.copyWith(
              color: AppColorLight.bodyTextColor,
            ))
      ],
    );
  }
}