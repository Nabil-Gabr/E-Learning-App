import 'package:flutter/material.dart';

class CustomLearnedToda extends StatelessWidget {
  const CustomLearnedToda({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff3787FF),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 16.0, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Learned today',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '46min ' '/' ' / 60min',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
