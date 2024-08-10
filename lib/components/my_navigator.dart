import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigator extends StatelessWidget {
  const MyNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(gap: 5, tabs: [
      GButton(
        // backgroundColor: Colors.black,
        activeBorder: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 5),
        icon: Icons.home,
        text: 'Home',
      ),
      GButton(
        // backgroundColor: Colors.black,
        activeBorder: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 5),
        icon: Icons.keyboard_command_key,
        text: 'Grupos',
      ),
      GButton(
        // backgroundColor: Colors.black,
        activeBorder: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 5),
        icon: Icons.wallet_rounded,
        text: 'Carteira',
      ),
      GButton(
        // backgroundColor: Colors.black,
        activeBorder: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 5),
        icon: Icons.settings_sharp,
        text: 'Definições',
      ),
    ]);
  }
}
