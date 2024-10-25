import 'package:flutter/material.dart';
import 'package:food_app/View/App_Screens/Homescreen.dart';
import 'package:food_app/View/App_Screens/Message.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Homescreen(),
    Chat()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: GNav(
              gap: 6,
              curve: Curves.bounceIn,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: const Color.fromARGB(255, 45, 193, 0),
              color: const Color.fromARGB(255, 32, 107, 0),
              activeColor: const Color.fromARGB(255, 45, 103, 0),
              rippleColor: Colors.grey[300]!,
              textStyle: TextStyle(color: Colors.black),
              tabBorderRadius: 12,
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
                  icon: Icons.shopping_cart,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.textsms,
                  text: 'Massage',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ));
  }
}
