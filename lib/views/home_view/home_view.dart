import 'package:bottom_nav_bar_app/views/different_nav_bottom_bar/normal.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NormalBottomNavBar(),));
              }, child: Text("Normal"),),
            ),
          ],
        ),
      ),
    );
  }
}
