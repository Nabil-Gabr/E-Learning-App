import 'package:e_learning_app/modules/courses/view/widgets/custom_tab_item.dart';
import 'package:flutter/material.dart';

class CustomTabListView extends StatelessWidget {
  const CustomTabListView({super.key});

  static const List<String> itemList=[
    'All',
    'Poular',
    'New'
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return  CustomTabItem(title: itemList[index]);
          },
          ),
      ) ,
    );
  }
}