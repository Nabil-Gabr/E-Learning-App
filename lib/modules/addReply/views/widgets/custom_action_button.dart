import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Liked',
              style: TextStyle(fontSize: 12, color: Color(0xff3787FF)),
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Reply',
                  style: TextStyle(fontSize: 12, color: Color(0xff767372)),
                )),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.thumb_up_off_alt,
              color: Color(0xff3787FF),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '21',
              style: TextStyle(fontSize: 11, color: Color(0xff3787FF)),
            ),
          ],
        ),
      ],
    );
  }
}
