import 'package:e_learning_app/core/utils/app_styles.dart';
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
            Text('Liked',
                style: AppStyles.textStyle12.copyWith(
                    color: const Color(0xff3787FF),
                    fontWeight: FontWeight.normal)),
            const SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text('Reply',
                    style: AppStyles.textStyle12.copyWith(
                        color: const Color(0xff767372),
                        fontWeight: FontWeight.normal))),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.thumb_up_off_alt,
              color: Color(0xff3787FF),
            ),
            const SizedBox(
              width: 10,
            ),
            Text('21',
                style: AppStyles.textStyle11
                    .copyWith(color: const Color(0xff3787FF))),
          ],
        ),
      ],
    );
  }
}
