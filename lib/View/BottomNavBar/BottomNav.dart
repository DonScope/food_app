import 'package:flutter/material.dart';
import 'package:food_app/View/App_Screens/Cartscreen.dart';
import 'package:food_app/View/App_Screens/Homescreen.dart';
import 'package:food_app/View/App_Screens/Message.dart';
import 'package:food_app/View/App_Screens/Profilescreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    Homescreen(),
    Profilescreen(),
    Cartscreen(),
    Chat()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GNav(
              onTabChange: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              haptic: true, // haptic feedback
              tabBorderRadius: 10,
              tabActiveBorder:
                  Border.fromBorderSide(BorderSide.none), // tab button border
              tabBorder:
                  Border.fromBorderSide(BorderSide.none), // tab button border
              gap: 8, // the tab button gap between icon and text
              color: Colors.greenAccent, // unselected icon color
              activeColor: Colors.greenAccent, // selected icon and text color
              iconSize: 30, // tab button icon size
              tabBackgroundColor: Colors.greenAccent.withOpacity(0.5),
              textStyle: TextStyle(
                  color: Colors.black), // selected tab background color
              padding: EdgeInsets.all(10), // navigation bar padding
              selectedIndex: currentIndex,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.card_giftcard,
                  text: 'Card',
                ),
                GButton(
                  icon: Icons.message,
                  text: 'Chat',
                )
              ]),
        ),
        body: Center(
          child: _screens.elementAt(currentIndex),
        ));
  }
}
