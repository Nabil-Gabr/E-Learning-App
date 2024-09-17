import 'package:e_learning_app/core/widgets/custom_app_bar.dart';
import 'package:e_learning_app/modules/myCourse/view/widgets/custom_learned_toda.dart';
import 'package:e_learning_app/modules/myCourse/view/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class MyCourseView extends StatelessWidget {
  const MyCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    
                    SliverToBoxAdapter(child: CustomAppBar(),),

                    SliverToBoxAdapter(child: CustomLearnedToda(),),

                    SliverToBoxAdapter(child: SizedBox(height: 20,),),

                    CustomSliverGrid()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
