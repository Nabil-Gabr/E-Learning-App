import 'package:e_learning_app/modules/level/views/widgets/track_viiew_body.dart';
import 'package:flutter/material.dart';

class TrackView extends StatelessWidget {
  const TrackView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TrackViiewBody(),
      ),
    );
  }
}