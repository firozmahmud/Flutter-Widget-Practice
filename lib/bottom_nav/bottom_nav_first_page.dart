import 'package:flutter/material.dart';

class BottomNavFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          "Message",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
