import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/core/widgets/custom_app_bar_app.dart';
import 'package:e_learning_app/modules/teacherst/data/datasource/teacherst_list_static.dart';
import 'package:e_learning_app/modules/teacherst/views/widgets/teacherst_list_tile_item.dart';
import 'package:flutter/material.dart';

class TeacherstView extends StatelessWidget {
  const TeacherstView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomAppBarApp(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Top teacher this month',
                style: AppStyles.styleRegular17,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 22,
            ),
          ),
          SliverList.builder(
            itemCount: teacherstListTileItemModel.length,
            itemBuilder: (context, index) {
              return TeacherstListTileItem(
                  itemModel: teacherstListTileItemModel[index]);
            },
          )
        ],
      )),
    );
  }
}
