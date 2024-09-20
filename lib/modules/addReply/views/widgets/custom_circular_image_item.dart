import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:flutter/material.dart';

class CustomCircularImageItem extends StatelessWidget {
  const CustomCircularImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(44))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(44),
        child: Image.asset(
          Assets.imagesGroup,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
