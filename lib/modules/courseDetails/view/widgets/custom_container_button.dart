import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/widgets/custom_button_app.dart';
import 'package:flutter/material.dart';

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * .12,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xffE4F1F8),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 219, 219, 219),
                offset: Offset(0, -1),
                blurRadius: 50,
                spreadRadius: 1)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColorLight.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.star),
                ),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            const Expanded(
                flex: 3,
                child: CustomButtonApp(
                  textButton: 'Buy Now',
                  backgroundColor: AppColorLight.bottunBackgroundColor,
                  textColor: AppColorLight.textBottunColor,
                  height: 50,
                ))
          ],
        ),
      ),
    );
  }
}
