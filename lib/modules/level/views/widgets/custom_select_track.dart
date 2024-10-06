import 'package:e_learning_app/modules/level/views/widgets/build_topic_circle.dart';
import 'package:flutter/material.dart';

class CustomSelectTrack extends StatelessWidget {
  const CustomSelectTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height * .55,
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Positioned(
                  top: 0,
                  left: constraints.maxWidth / 3,
                  right: constraints.maxWidth / 3,
                  child: const BuildTopicCircle(textTopic: 'Marketing')),
              Positioned(
                top: constraints.maxHeight / 4,
                left: 0,
                child: const BuildTopicCircle(textTopic: 'Programing'),
              ),
              Positioned(
                  top: constraints.maxHeight / 6,
                  right: 0,
                  child: const BuildTopicCircle(textTopic: 'UI/UX Design')),
              const Align(
                  alignment: Alignment.center,
                  child: BuildTopicCircle(textTopic: 'Computer Scince')),
              Positioned(
                  bottom: constraints.maxHeight / 8,
                  left: 0,
                  child: const BuildTopicCircle(textTopic: 'Development')),
              Positioned(
                  bottom: 0,
                  right: constraints.maxWidth / 3,
                  child:const  BuildTopicCircle(textTopic: 'Graphics 2')),
              Positioned(
                  bottom: constraints.maxHeight / 5,
                  right: 0,
                  child: const BuildTopicCircle(textTopic: 'Graphics')),
            ],
          ),
        ));
  }
}
