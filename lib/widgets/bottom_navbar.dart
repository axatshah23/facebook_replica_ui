import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/friends_page/friends_screen.dart';
import 'package:internship/home_page/home_screen.dart';
import 'package:internship/marketplace_page/marketplace_screen.dart';
import 'package:internship/notifications_page/notifications_screen.dart';

import '../constants.dart';
import '../menu_page/menu_screen.dart';

int currIndex = 0;
List<BottomNavigationBarItem> navbar = [
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.house),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.userGroup),
    label: 'Friends',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.shop),
    label: 'Marketplace',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.bell),
    label: 'Notifications',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.bars),
    label: 'Menu',
  ),
];

// Corresponding screens list
List<Widget> screens = [
  const Home(),
  const Friends(),
  const Marketplace(),
  const Notifications(),
  const Menu(),
];

// method to pin shortcuts to navbar
void addToNavBar(BuildContext context, IconData icon1, String label1) {
  int x = navbar.length;
  if (x < 6) {
    // Add menu to last in lists
    navbar.add(
      const BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.bars),
        label: 'Menu',
      ),
    );
    screens.add(
      const Menu(),
    );
    //Add new item at second last position
    navbar[x - 1] = BottomNavigationBarItem(
      icon: Icon(icon1),
      label: label1,
    );
    currIndex = x - 1;
  } else {
    Fluttertoast.showToast(
        msg: 'Navigation Bar already full. Try removing some elements first');
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        enableFeedback: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        backgroundColor: kSecondaryColor,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: kNavBarFontSize,
        unselectedFontSize: kNavBarFontSize,
        onTap: (currentIndex) {
          setState(() {
            currIndex = currentIndex;
          });
        },
        items: navbar,
      ),
      body: IndexedStack(
        index: currIndex,
        children: screens,
      ),
    );
  }
}
