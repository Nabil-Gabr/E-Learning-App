import 'package:e_learning_app/modules/level/views/widgets/custom_icon_button.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_row_button.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_select_level.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_text_choose.dart';
import 'package:flutter/material.dart';

class LevelViewbody extends StatelessWidget {
  const LevelViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.only(left: 19 ,right: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: SizedBox(height: 50,)),
          CustomIconButton(),
          SizedBox(height: 8,),
          CustomTextChoose(text: 'Choose your level',),
          Flexible(child: SizedBox(height: 33,)),
          CustomSelectLevel(),
          Expanded(child: SizedBox()),
          CustomRowButton()
          
        ],
      ),
    );
  }
}