import 'package:flutter/material.dart';

class BottomNavThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
