import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
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
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: CustomCircularImageItem())),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '@mouni',
                          style: AppStyles.textStyle14,
                        ),
                        Text(
                          '11 mins ago' '   .   ' 'Student',
                          style:
                              AppStyles.textStyle12.copyWith(color:AppColorLight.captionTextColor,fontWeight: FontWeight.normal)
                        ),
                        Text(
                          'The step is really easy, just keep practicing line drawing with right posture and correct pencil holding as showen in the video! Good luck ❤',
                          style:
                              AppStyles.textStyle12.copyWith(color:AppColorLight.captionTextColor,fontWeight: FontWeight.normal)
                        ),
                        const CustomActionButton()
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
