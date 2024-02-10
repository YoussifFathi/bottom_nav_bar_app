import 'package:bottom_nav_bar_app/views/main_views/add.dart';
import 'package:bottom_nav_bar_app/views/main_views/discovery.dart';
import 'package:bottom_nav_bar_app/views/main_views/home.dart';
import 'package:bottom_nav_bar_app/views/main_views/message.dart';
import 'package:bottom_nav_bar_app/views/main_views/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexBottomNavBar extends StatefulWidget {
  const ConvexBottomNavBar({super.key});

  @override
  State<ConvexBottomNavBar> createState() => _ConvexBottomNavBarState();
}

class _ConvexBottomNavBarState extends State<ConvexBottomNavBar> {

  int _currentIndex = 0;

  List<Widget> bodyList = [
    Home(),
    Discovery(),
    Add(),
    Message(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: bodyList[_currentIndex],
      bottomNavigationBar: ConvexAppBar.badge(
        {3:'13'},
        items: const [
          TabItem(icon: Icon(Icons.home), title: 'Home'),
          TabItem(icon: Icon(Icons.map), title: 'Discovery'),
          TabItem(icon: Icon(Icons.add), title: 'Add'),
          TabItem(icon: Icon(Icons.message), title: 'Chat'),
          TabItem(icon: Icon(Icons.people), title: 'Profile'),
        ],
        initialActiveIndex: _currentIndex,
        activeColor: Colors.blue,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
        // selectedItemColor: Colors.blue,
        // unselectedItemColor: Colors.grey,
        // currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
