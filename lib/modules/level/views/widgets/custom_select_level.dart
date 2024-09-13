import 'package:e_learning_app/modules/level/views/widgets/custom_level_item.dart';
import 'package:flutter/material.dart';

class CustomSelectLevel extends StatelessWidget {
  const CustomSelectLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: MediaQuery.sizeOf(context).height * .52,
            child:  Row(
              children: [
                Expanded(child: LayoutBuilder(builder: (context, constraints) => CustomLevel(textLevel: 'Beginner',ageLevel: '10 - 16',height: constraints.maxHeight * .5 ,),)),
                const SizedBox(width: 16,),
                Expanded(child: LayoutBuilder(builder: (context, constraints) => CustomLevel(textLevel: 'Medium',ageLevel: '16 - 24',height: constraints.maxHeight * .6 ,),)),
                const SizedBox(width: 16,),
                Expanded(child: LayoutBuilder(builder: (context, constraints) => CustomLevel(textLevel: 'Intermediate',ageLevel: '24 - 36',height: constraints.maxHeight * .7 ,),)),
              ],),
          );
  }
}