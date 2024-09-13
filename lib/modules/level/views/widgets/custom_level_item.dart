import 'package:flutter/material.dart';

class CustomLevel extends StatelessWidget {
  final String textLevel;
  final String ageLevel;
  final double? height;
  const CustomLevel({
    super.key, 
    this.height,
    required this.textLevel, 
    required this.ageLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(textLevel,style: const TextStyle(fontSize: 12,color: Color(0xff060302)),),
        const Flexible(child: SizedBox(height: 19,)),
        Container(
          height: 54,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Text(ageLevel,style: const TextStyle(fontSize: 16,color: Color(0xff060302)),textAlign: TextAlign.center,),
        ),
        Container(
          height: height,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xff767372),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
          ),
          child: Image.asset('asset/images/man1.png'),
        ),
      ],
    );
  }
}