import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/constant/constants.dart';
import 'package:e_learning_app/main.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController myController = TextEditingController();

    // Create a CollectionReference called users that references the firestore collection
    CollectionReference replies =
        FirebaseFirestore.instance.collection(messagesCollections);

    Future<void> addReply(String message) {
      // Call the user's CollectionReference to add a new user
      return replies.add({
        'message': message,
        'date': DateTime.now(), // John Doe
        'userName':
            'Nabil Gabr', // the data is supposed to come Firebase Authentication
        'role': sharedPreferences.getString('role'),
        'likes': [],
        'replies': [],
      });
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 13, right: 9, left: 9),
      child: TextFormField(
        controller: myController,
        onFieldSubmitted: (value) {
          addReply(value);
          myController.clear();
        },
        decoration: InputDecoration(
            fillColor: AppColorLight.seconderyColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                addReply(myController.text);
                myController.clear();
              },
              icon: const Icon(
                Icons.send,
              ),
              color: AppColorLight.primaryColor,
            )),
      ),
    );
  }
}
