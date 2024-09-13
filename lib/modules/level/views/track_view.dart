import 'package:e_learning_app/modules/level/controller/track_controller.dart';
import 'package:e_learning_app/modules/level/views/widgets/track_viiew_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';

class TrackView extends StatelessWidget {
  const TrackView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TrackController(),permanent: true);
    return const SafeArea(
      child: Scaffold(
        body: TrackViiewBody(),
      ),
    );
  }
}