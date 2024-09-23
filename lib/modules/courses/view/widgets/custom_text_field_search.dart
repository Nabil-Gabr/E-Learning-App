import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch(
      {super.key, this.onPressedSearch, this.onPressedFilter, this.onChanged});
  final void Function()? onPressedSearch;
  final void Function()? onPressedFilter;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            fillColor: AppColorLight.primaryColor,
            filled: true,
            border: const UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(28)),
            ),
            prefixIcon: IconButton(
                onPressed: onPressedSearch, icon: const Icon(Icons.search)),
            hintText: 'Find Cousre',
            helperStyle: AppStyles.styleMedium16,
            suffixIcon: IconButton(
              onPressed: onPressedFilter,
              icon: const Icon(Icons.tune),
              color: AppColorLight.bodyTextColor,
            )),
      ),
    );
  }
}
