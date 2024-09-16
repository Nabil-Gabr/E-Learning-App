import 'package:flutter/material.dart';

class CustomRowAddReplies extends StatelessWidget {
  const CustomRowAddReplies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '1 Replies',
            style:
                TextStyle(fontSize: 14.4, color: Color(0xff767372)),
          ),
          Container(
            width: 106,
            height: 41,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff3787FF),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: const Text(
              'Add reply',
              style: TextStyle(fontSize: 14.4, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}