import 'package:flutter/material.dart';
//import 'package:cs3midlogin/src/models/posts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  //List<Posts> posts = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E), // Same background color
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Adjust size based on screen width
          double logoSize = constraints.maxWidth * 0.3; // 30% of screen width

          return Center(
            child: Text("Hello",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          );
        },
      ),
    );
  }
}
