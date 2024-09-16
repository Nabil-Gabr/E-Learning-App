import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "01",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff060302),
                    fontWeight: FontWeight.w500),
              )),
              Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to the Course',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff767372),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '6:10  ' '6:10',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff060302),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.play_circle_fill,
                        color: Color(0xff3787FF),
                        size: 44,
                      ),
                    ],
                  ))
            ],
          ),
        );
      },
    );
  }
}
