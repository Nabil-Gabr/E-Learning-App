import 'package:e_learning_app/modules/level/views/widgets/level_view_body.dart';
import 'package:flutter/material.dart';

class LevelView extends StatelessWidget {
  const LevelView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:LevelViewbody(),
      ),
    );
  }
}