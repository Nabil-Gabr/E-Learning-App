import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/constant/constants.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatefulWidget {
  const CustomActionButton(
      {super.key, required this.itemList, required this.docsId});
  final List itemList;
  final String docsId;

  @override
  State<CustomActionButton> createState() => _CustomActionButtonState();
}

class _CustomActionButtonState extends State<CustomActionButton> {
  // Create a CollectionReference called users that references the firestore collection
  CollectionReference replies =
      FirebaseFirestore.instance.collection(messagesCollections);

  Future<void> updateReply() {
    return replies
        // existing document in 'users' collection: "ABC123"
        .doc(widget.docsId)
        .set(
          {
            'likes': FieldValue.arrayUnion(['elements']),
          },
          SetOptions(merge: true),
        )
        .then(
            (value) => print("'full_name' & 'age' merged with existing data!"))
        .catchError((error) => print("Failed to merge data: $error"));
  }

  Future<void> removeReply() {
    return replies
        // existing document in 'users' collection: "ABC123"
        .doc(widget.docsId)
        .set(
          {
            'likes': FieldValue.arrayRemove(['elements']),
          },
          SetOptions(merge: true),
        )
        .then(
            (value) => print("'full_name' & 'age' merged with existing data!"))
        .catchError((error) => print("Failed to merge data: $error"));
  }

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                  if (isSelected == true) {
                    updateReply();
                  } else {
                    removeReply();
                  }
                  print('====================================$isSelected');
                });
              },
              child: Text(isSelected ? 'Liked' : 'Like',
                  style: AppStyles.textStyle12.copyWith(
                      color: isSelected
                          ? AppColorLight.seconderyColor
                          : AppColorLight.captionTextColor,
                      fontWeight: FontWeight.normal)),
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text('Reply',
                    style: AppStyles.textStyle12.copyWith(
                        color: AppColorLight.captionTextColor,
                        fontWeight: FontWeight.normal))),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.thumb_up_off_alt,
              color: AppColorLight.seconderyColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text('${widget.itemList.length}',
                style: AppStyles.textStyle11
                    .copyWith(color: AppColorLight.seconderyColor)),
          ],
        ),
      ],
    );
  }
}
