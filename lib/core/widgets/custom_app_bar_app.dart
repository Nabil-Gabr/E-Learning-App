import 'package:flutter/material.dart';

class CustomAppBarApp extends StatelessWidget {
  final void Function()? onPressed;
  const CustomAppBarApp({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_back_ios_new,
              weight: 24,
              color: Colors.black,
            )));
  }
}
