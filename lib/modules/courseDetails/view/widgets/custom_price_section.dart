import 'package:flutter/material.dart';

class CustomPriceSection extends StatelessWidget {
  const CustomPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product Design v1.0',
                style: TextStyle(fontSize: 14.4, color: Color(0xff060302)),
              ),
              Text(
                r'$74.00',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060302),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            '6h 14min · 24 Lessons',
            style: TextStyle(fontSize: 12, color: Color(0xff767372)),
          )
        ],
      ),
    );
  }
}
