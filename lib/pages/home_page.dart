import 'package:finacia_cont/components/home_body.dart';
import 'package:finacia_cont/components/my_menu.dart';
import 'package:finacia_cont/components/my_navigator.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),

          // Menu
          MyMenu(),

          // Body
          HomeBody(screenHeight: screenHeight, screenWidth: screenWidth),
        ],
      ),

      // Navigation Bar
      bottomNavigationBar: MyNavigator(),
    );
  }
}
