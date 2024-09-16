import 'package:flutter/material.dart';

class CustomColumnBestSeller extends StatelessWidget {
  const CustomColumnBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 26,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color(0xff3787FF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: const Text(
              'BESTSELLER',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Product',
            style: TextStyle(fontSize: 14.4, color: Color(0xff060302)),
          ),
          const Text(
            'Design v1.0',
            style: TextStyle(fontSize: 14.4, color: Color(0xff060302)),
          )
        ],
      ),
    );
  }
}
