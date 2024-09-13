import 'package:e_learning_app/modules/level/views/widgets/build_topic_circle.dart';
import 'package:flutter/material.dart';

class CustomSelectTrack extends StatelessWidget {
  const CustomSelectTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            height: MediaQuery.sizeOf(context).height * .55,
            child: const Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 120,
                  child: BuildTopicCircle(textTopic: 'Marketing') ),

                  Positioned(
                    top: 50,
                    right: 0,
                    child: BuildTopicCircle(textTopic: 'UI/UX Design') 
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    child: BuildTopicCircle(textTopic: 'Development')
                  ),
                  Positioned(
                    bottom: 0,
                    right: 120,
                    child: BuildTopicCircle(textTopic: 'Graphics 2')
                  ),
                  Positioned(
                    top: 190,
                    bottom: 100,
                    right: 130,
                    child: BuildTopicCircle(textTopic: 'Computer Scince') 
                  ),

                  Positioned(
                  top: 130,
                  left: 0,
                  child: BuildTopicCircle(textTopic: 'Programing'),),

                  Positioned(
                  bottom: 130,
                  right: 0,
                  child: BuildTopicCircle(textTopic: 'Graphics')),
                  // Positioned(
                  //   top: 40,
                  //   right: 30,
                  //   child: Text("Mobile App"),
                  // ),
                  
              ],),
          );
  }
}