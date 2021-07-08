import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
