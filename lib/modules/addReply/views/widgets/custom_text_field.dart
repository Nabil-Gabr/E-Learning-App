import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? myController;
  const CustomTextField({super.key, this.myController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13, right: 9, left: 9),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            fillColor: AppColorLight.seconderyColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            suffixIcon: const Icon(
              Icons.send,
              color: AppColorLight.primaryColor,
            )),
      ),
    );
  }
}
