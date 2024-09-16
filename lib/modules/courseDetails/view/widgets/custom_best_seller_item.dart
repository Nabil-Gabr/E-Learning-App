import 'package:e_learning_app/modules/courseDetails/view/widgets/custom_column_best_seller.dart';
import 'package:flutter/material.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: height * .35,
        child: Row(
          children: [
            const CustomColumnBestSeller(),
            Expanded(
                child: Image.asset(
              'asset/images/Group.png',
              height: double.infinity,
            ))
          ],
        ),
      ),
    );
  }
}
