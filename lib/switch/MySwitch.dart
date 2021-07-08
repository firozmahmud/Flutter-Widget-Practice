import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isChecked ? Colors.green : Colors.blueGrey,
      body: Center(
        child: Switch(
          onChanged: (bool value) {
            setState(() {
              isChecked = value;
            });
          },
          value: isChecked,
        ),
      ),
    );
  }
}
