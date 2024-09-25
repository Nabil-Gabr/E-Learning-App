import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/home/data/datasource/static/static.dart';
import 'package:e_learning_app/modules/home/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.259375,
            child: CustomBookImage(
              imageUrl: bookDetailsItemModel[0].imageUrl,
            )),
        const SizedBox(
          height: 18,
        ),
        Text(
          bookDetailsItemModel[0].titleBook,
          style: AppStyles.styleRegular20,
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          bookDetailsItemModel[0].subTitle,
          style: AppStyles.styleRegular17,
        ),
        Text(
          bookDetailsItemModel[0].authorName,
          style: AppStyles.styleMedium12,
        ),
      ],
    );
  }
}
