import 'package:e_learning_app/modules/level/views/widgets/custom_icon_button.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_row_button.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_select_level.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_text_choose.dart';
import 'package:flutter/material.dart';

class LevelViewbody extends StatelessWidget {
  const LevelViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 19 ,right: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Flexible(child: SizedBox(height: 50,)),
          CustomIconButton(onPressed: () {
            Navigator.pop(context);
          },),
          const SizedBox(height: 8,),
          const CustomTextChoose(text: 'Choose your level',),
          const Flexible(child: SizedBox(height: 33,)),
          const CustomSelectLevel(),
          const Expanded(child: SizedBox()),
          const CustomRowButton()
          
        ],
      ),
    );
  }
}