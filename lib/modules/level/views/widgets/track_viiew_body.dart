import 'package:e_learning_app/modules/level/views/widgets/custom_icon_button.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_row_button.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_select_track.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_text_choose.dart';
import 'package:flutter/material.dart';

class TrackViiewBody extends StatelessWidget {
  const TrackViiewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 19 ,right: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: SizedBox(height: 50,)),
          CustomIconButton(),
          SizedBox(height: 5,),
          CustomTextChoose(text: 'What you will learn?',),
          Flexible(child: SizedBox(height: 22,)),
          CustomSelectTrack(),
          Expanded(child: SizedBox()),
          CustomRowButton()
          
        ],
      ),
    );
  }
}