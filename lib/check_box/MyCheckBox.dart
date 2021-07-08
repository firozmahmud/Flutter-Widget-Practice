import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                isChecked ? "Checked" : "UnChecked",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
