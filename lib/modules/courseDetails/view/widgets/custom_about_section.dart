import 'package:flutter/material.dart';

class CustomAboutSection extends StatelessWidget {
  const CustomAboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About this course',
            style: TextStyle(fontSize: 14.4, color: Color(0xff060302)),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, ',
            style: TextStyle(fontSize: 12, color: Color(0xff767372)),
          )
        ],
      ),
    );
  }
}
