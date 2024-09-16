import 'package:e_learning_app/core/widgets/custom_app_bar.dart';
import 'package:e_learning_app/modules/courseDetails/view/widgets/custom_about_section.dart';
import 'package:e_learning_app/modules/courseDetails/view/widgets/custom_best_seller_item.dart';
import 'package:e_learning_app/modules/courseDetails/view/widgets/custom_container_button.dart';
import 'package:e_learning_app/modules/courseDetails/view/widgets/custom_price_section.dart';
import 'package:e_learning_app/modules/courseDetails/view/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: CustomAppBar(),
                  ),
                  SliverToBoxAdapter(
                    child: CustomBestSellerItem(),
                  ),
                  SliverToBoxAdapter(
                    child: CustomPriceSection(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 18,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomAboutSection(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 18,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 18,
                    ),
                  ),
                  CustomSliverList()
                ],
              ),
            ),
            CustomContainerButton(),
          ],
        ),
      ),
    );
  }
}
