import 'package:e_learning_app/core/widgets/custom_app_bar_app.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_row_add_replies.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_sliver_list_reply.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReplyDetailsView extends StatelessWidget {
  const AddReplyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [

                  //AppBar
                  SliverToBoxAdapter(
                    child: CustomAppBarApp(
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),

                  //SizedBox
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),

                  //Button Add Rep;y and Display Number of Replies
                  const SliverToBoxAdapter(
                    child: CustomRowAddReplies(),
                  ),

                  //SizedBox
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),

                  //CusttomScroolView(Display Replies Messages)
                  const SliverFillRemaining(
                    child: CustomSliverListReply(),
                  )
                ],
              ),
            ),

            //TextField
            const CustomTextField(),
          ],
        ),
      ),
    );
  }
}
