import 'package:flutter/material.dart';

class CustomRectangle extends StatelessWidget {
  const CustomRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    double currenSliderValue = 50;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
          activeColor: Colors.white,
          inactiveColor: Colors.black,
          thumbColor: const Color(0xff3787FF),
          value: currenSliderValue,
          max: 100,
          min: 0,
          label: currenSliderValue.round().toString(),
          onChanged: (double value) {
            currenSliderValue = value;
          },
        ),
        const Text(
          'Completed',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
