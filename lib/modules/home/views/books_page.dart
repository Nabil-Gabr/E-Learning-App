import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Center(
        child: Text(
          'Books Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}