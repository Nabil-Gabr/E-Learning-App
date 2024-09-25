import 'package:e_learning_app/modules/home/views/widgets/best_seller_books_section.dart';
import 'package:e_learning_app/modules/home/views/widgets/book_action_section.dart';
import 'package:e_learning_app/modules/home/views/widgets/book_details_section.dart';
import 'package:e_learning_app/modules/home/views/widgets/custom_app_bar_bottom_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric( horizontal: 30),
          child: Column(
            children: [
              CustomAppBarBottomTabBar(),
              SizedBox(height: 17,),
              BookDetailsSection(),
              SizedBox(height: 24,),
              BookActionSection(),
              Expanded(child: SizedBox()),
              BestSellerBooksSection(),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}


