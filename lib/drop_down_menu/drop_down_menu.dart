import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  var selectedText = "Select";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                selectedText,
                style: TextStyle(fontSize: 25),
              ),
            ),
            DropdownButton(
              iconSize: 50,
              items: [
                DropdownMenuItem(
                  child: Text("Apple"),
                  value: "Apple",
                ),
                DropdownMenuItem(
                  child: Text("Orange"),
                  value: "Orange",
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedText = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
