import 'package:e_learning_app/modules/home/data/datasource/static/static.dart';
import 'package:e_learning_app/modules/home/views/widgets/best_seller_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksSection extends StatelessWidget {
  const BestSellerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return  BestSellerBookItem(itemModel: bestSellerBookItemModel[index],);
        },),
    );
  }
}


