import 'package:e_learning_app/modules/addReply/views/widgets/custom_action_button.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_circular_image_item.dart';
import 'package:flutter/material.dart';

class CustomSliverListReply extends StatelessWidget {
  const CustomSliverListReply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: CustomCircularImageItem())),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '@mouni',
                          style: TextStyle(
                              fontSize: 14.4,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff060302)),
                        ),
                        Text(
                          '11 mins ago' '   .   ' 'Student',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff767372)),
                        ),
                        Text(
                          'The step is really easy, just keep practicing line drawing with right posture and correct pencil holding as showen in the video! Good luck ❤',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff767372)),
                        ),
                        CustomActionButton()
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
