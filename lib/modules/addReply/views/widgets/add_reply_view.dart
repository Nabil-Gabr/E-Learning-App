import 'package:e_learning_app/core/widgets/custom_app_bar_app.dart';
import 'package:e_learning_app/modules/addReply/views/add_reply_details_view.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_row_add_replies.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_sliver_list_reply.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReplyView extends StatelessWidget {
  const AddReplyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              //AppBar
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: CustomAppBarApp(),
                  ),
                  //SizedBox
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),

                  //Button Add Rep;y and Display Number of Replies
                  SliverToBoxAdapter(
                    child: CustomRowAddReplies(
                      onTap: () {
                        Get.to(() => const AddReplyDetailsView());
                      },
                    ),
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
          ],
        ),
      ),
    );
  }
}
