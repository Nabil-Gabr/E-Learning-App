import 'package:e_learning_app/core/widgets/custom_app_bar_app.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_row_add_replies.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_sliver_list_reply.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddReplyView extends StatelessWidget {
  const AddReplyView({super.key});

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
                    child: CustomAppBarApp(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CustomRowAddReplies(),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  CustomSliverListReply()
                ],
              ),
            ),
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}
