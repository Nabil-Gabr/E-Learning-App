import 'package:e_learning_app/modules/courses/view/widgets/custom_courses_sliver_list.dart';
import 'package:e_learning_app/modules/courses/view/widgets/custom_row_choice_course.dart';
import 'package:e_learning_app/modules/courses/view/widgets/custom_tab_list_view.dart';
import 'package:e_learning_app/modules/courses/view/widgets/custom_text_field_search.dart';
import 'package:e_learning_app/modules/courses/view/widgets/custom_title_avatar.dart';
import 'package:e_learning_app/modules/courses/view/widgets/recommendations_row.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 13,),),
            SliverToBoxAdapter(child: CustomTitleAvatar(),),
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: CustomTextFieldSearch(),),
            SliverToBoxAdapter(child: SizedBox(height: 34,),),
            SliverToBoxAdapter(child: RecommendationsRow(),),
            SliverToBoxAdapter(child: SizedBox(height: 11,),),
            SliverToBoxAdapter(child: CustomRowChoiceCourse(),),
            SliverToBoxAdapter(child: SizedBox(height: 17,),),
            SliverToBoxAdapter(child: CustomTabListView()),
            SliverToBoxAdapter(child: SizedBox(height: 34,),),
            CustomCoursesSliverList(),

          ],
        ),
      ),
    );
  }
}