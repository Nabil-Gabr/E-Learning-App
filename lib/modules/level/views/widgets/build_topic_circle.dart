import 'package:e_learning_app/modules/level/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BuildTopicCircle extends StatelessWidget {
  final String textTopic;
  const BuildTopicCircle({super.key, required this.textTopic});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      CustomButton(text: textTopic,fontSize: 12, width: 102, height: 102, borderRadius: 102,),
      const Positioned(
                top: 5,
                right: 5,
                child: Icon(
                  Icons.check_circle_sharp,
                  color: Color(0xffFF9D42),
                  size: 30,
                ),
              ),

    ],);
  }
}