import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/widgets/custom_button_app.dart';
import 'package:flutter/material.dart';

class BookActionSection extends StatelessWidget {
  const BookActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.sizeOf(context).height;
    double width =MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonApp(
            textButton: 'Buy Ebook ',
            backgroundColor: AppColorLight.seconderyColor ,
            height: height *  0.05,
            width:  width * 0.36 ,
            textColor: AppColorLight.primaryColor,
          ),
          CustomButtonApp(
            textButton: 'Buy Audio',
            backgroundColor:  AppColorLight.primaryColor,
            height: height *  0.05,
            width:  width * 0.36 ,
            textColor: AppColorLight.bodyTextColor,
          ),
        ],
      ),
    );
  }
}