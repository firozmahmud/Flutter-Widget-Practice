import 'package:flutter/material.dart';
import 'package:flutter_app_network/bottom_nav/bottom_nav_first_page.dart';
import 'package:flutter_app_network/bottom_nav/bottom_nav_second_page.dart';
import 'package:flutter_app_network/bottom_nav/bottom_nav_third_page.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var currentPage = 0;
  final _pages = [
    BottomNavFirstPage(),
    BottomNavSecondPage(),
    BottomNavThirdPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Message')),
          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text('Call')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Profile')),
        ],
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
      body: _pages[currentPage],
    );
  }
}
