import 'package:flutter/material.dart';

import 'package:splashy_bottom_app_bar/splashy_bottom_app_bar.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
      text: "Likes",
      iconData: Icons.favorite_border,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person_outline,
      color: Colors.teal,
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.add_circle_outline,
      color: Colors.redAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        //color: barItems[_currentIndex].color,
      ),
      bottomNavigationBar: SplashyBottomAppBar(
        iconSize: MediaQuery.of(context).size.width * 0.08,
        //currentIndex: _currentIndex,
        items: barItems,
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
      ),
    );
  }
}
