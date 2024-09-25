import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/core/widgets/custom_button_app.dart';
import 'package:e_learning_app/modules/teacherst/data/models/teacherst_list_tile_item_model.dart';
import 'package:flutter/material.dart';

class TeacherstListTileItem extends StatelessWidget {
  const TeacherstListTileItem({
    super.key,
    required this.itemModel,
  });
  final TeacherstListTileItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: ListTile(
        leading: Container(
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(44))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(44),
            child: Image.asset(
              itemModel.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          itemModel.title,
          style: AppStyles.styleMedium14,
        ),
        subtitle: Text(
          itemModel.subTitle,
          style:
              AppStyles.styleMedium12.copyWith(color: const Color(0xff888C94)),
        ),
        trailing: CustomButtonApp(
          fontSize: 14,
          textButton: itemModel.textButton,
          backgroundColor: AppColorLight.primaryColor,
          textColor: AppColorLight.bodyTextColor,
          height: 41,
          width: 73,
        ),
      ),
    );
  }
}
