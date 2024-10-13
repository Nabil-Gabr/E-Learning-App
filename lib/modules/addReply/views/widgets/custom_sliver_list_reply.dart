import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_app/core/constant/app_color.dart';
import 'package:e_learning_app/core/constant/constants.dart';
import 'package:e_learning_app/core/utils/app_styles.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_action_button.dart';
import 'package:e_learning_app/modules/addReply/views/widgets/custom_circular_image_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomSliverListReply extends StatefulWidget {
  const CustomSliverListReply({
    super.key,
  });

  @override
  State<CustomSliverListReply> createState() => _CustomSliverListReplyState();
}

class _CustomSliverListReplyState extends State<CustomSliverListReply> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> usersStream = FirebaseFirestore.instance
        .collection(messagesCollections)
        .orderBy('date')
        .snapshots();
    //using StreamBuilder
    return StreamBuilder(
        stream: usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: CustomCircularImageItem())),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              snapshot.data!.docs[index]['role'] == 'Student'
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data!.docs[index]
                                              ['userName'],
                                          style: AppStyles.textStyle14,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                                DateFormat.Hm().format(snapshot
                                                    .data!.docs[index]['date']
                                                    .toDate()),
                                                style: AppStyles.textStyle12
                                                    .copyWith(
                                                        color: AppColorLight
                                                            .captionTextColor,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                            Text(
                                                '   .   '
                                                '${snapshot.data!.docs[index]['role']}',
                                                style: AppStyles.textStyle12
                                                    .copyWith(
                                                        color: AppColorLight
                                                            .captionTextColor,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                          ],
                                        )
                                      ],
                                    )
                                  : Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              snapshot.data!.docs[index]
                                                  ['userName'],
                                              style: AppStyles.textStyle14,
                                            ),
                                            Text('11 mins ago',
                                                style: AppStyles.textStyle12
                                                    .copyWith(
                                                        color: AppColorLight
                                                            .captionTextColor,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 53,
                                        ),
                                        Container(
                                          width: 66,
                                          height: 21,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            color: AppColorLight.seconderyColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                          ),
                                          child: Text(
                                            'teacher',
                                            style: AppStyles.styleMedium12
                                                .copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                              Text('${snapshot.data!.docs[index]['message']}',
                                  style: AppStyles.textStyle12.copyWith(
                                      color: AppColorLight.captionTextColor,
                                      fontWeight: FontWeight.normal)),
                              CustomActionButton(
                                itemList: snapshot.data!.docs[index]['likes'],
                                docsId: snapshot.data!.docs[index].id,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
