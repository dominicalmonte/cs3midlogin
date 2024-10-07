import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E), // Same background color
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Adjust size based on screen width
          double logoSize = constraints.maxWidth * 0.3; // 30% of screen width

          return Center(
            child: Image.asset(
              'assets/logo.png', // Correct path to logo
              width: logoSize,  // Dynamic width
              height: logoSize, // Dynamic height (keeps square aspect ratio)
            ),
          );
        },
      ),
    );
  }
}
