import 'package:e_learning_app/main.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_level_item_button.dart';
import 'package:flutter/material.dart';

class CustomSelectLevel extends StatefulWidget {
  const CustomSelectLevel({super.key});

  @override
  State<CustomSelectLevel> createState() => _CustomSelectLevelState();
}

class _CustomSelectLevelState extends State<CustomSelectLevel> {
  int index=-1;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .52,
      child: Row(
        children: [
          Expanded(
              child: LayoutBuilder(
            builder: (context, constraints) => CustomLevelItemButton(
              onTap: () {
                index=0;
                sharedPreferences.setStringList('selectLevel', [
                  'Beginner',
                  '10 - 16',
                ]);
                setState(() {
                  
                });
                print('===========================${sharedPreferences.getStringList('selectLevel')}');
                
              },
              asActive: index == 0 ?true :false,
              textLevel: 'Beginner',
              ageLevel: '10 - 16',
              height: constraints.maxHeight * .5,
            ),
          )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: LayoutBuilder(
            builder: (context, constraints) => CustomLevelItemButton(
              onTap: () {
                index=1;
                sharedPreferences.setStringList('selectLevel', [
                  'Medium',
                  '16 - 24',
                ]);
                setState(() {
                  
                });
                print('===========================${sharedPreferences.getStringList('selectLevel')}');
              },
              asActive: index == 1 ?true :false,
              textLevel: 'Medium',
              ageLevel: '16 - 24',
              height: constraints.maxHeight * .6,
            ),
          )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              child: LayoutBuilder(
            builder: (context, constraints) => CustomLevelItemButton(
              onTap: () {
                index=2;
                sharedPreferences.setStringList('selectLevel', [
                  'Intermediate',
                  '24 - 36',
                ]);
                setState(() {
                  
                });
                print('===========================${sharedPreferences.getStringList('selectLevel')}');
              },
              asActive: index == 2 ?true :false,
              textLevel: 'Intermediate',
              ageLevel: '24 - 36',
              height: constraints.maxHeight * .7,
            ),
          )),
        ],
      ),
    );
  }
}
