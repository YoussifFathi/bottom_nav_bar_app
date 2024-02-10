import 'package:bottom_nav_bar_app/views/main_views/add.dart';
import 'package:bottom_nav_bar_app/views/main_views/discovery.dart';
import 'package:bottom_nav_bar_app/views/main_views/home.dart';
import 'package:bottom_nav_bar_app/views/main_views/message.dart';
import 'package:bottom_nav_bar_app/views/main_views/profile.dart';
import 'package:flutter/material.dart';

class NormalBottomNavBar extends StatefulWidget {
  const NormalBottomNavBar({super.key});

  @override
  State<NormalBottomNavBar> createState() => _NormalBottomNavBarState();
}

class _NormalBottomNavBarState extends State<NormalBottomNavBar> {

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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Discovery'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
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
